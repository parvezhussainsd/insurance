import React from 'react';
import SideMenu from './SideMenu';
import MainTable from '../Components/MainTable';
import UsersTable from '../Components/UsersTable';
import {LOGIN_API,GET_USERS,GET_INSURANCES} from "../Constants/urlConstants";
export default function LandingPage(userDetails) {
  const style = {
    height: "100%",
    width:"100%",
    "margin-left": "0%",
    "margin-right": "0%",
    "padding-left": "0px",
    "padding-right": "0px",
    "backgroundImage": "linear-gradient(269.7deg, #01ADD5 0.26%, #005775 99.4%)",
    "min-height": "781px"
  };
  const [menu, setMenu] = React.useState("Insurance");
  const [user, setuserDetails] = React.useState({});
  const [allUsers,setallUsers] = React.useState({
    allUsers: [],
    usersErrorMessage: "",
    isUserError: false
  });
  const [allInsurances,setallInsurances] = React.useState({
    allInsurances: [],
    insurenceErrorMessage: "",
    isInsuranceError: false
  });


  React.useEffect(() => {
    setuserDetails(JSON.parse(userDetails.userDetails));
    getInsurences();
    getUsers();
    
  }, []);

  const getUsers = () => {
    var url = GET_USERS;
  
    fetch(url, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then((res) => {
          return res.json();
      })
      .then((dta) => {
        
        if(dta.status === 200) {
         
          setallUsers({...allUsers, isUserError: false, allUsers:dta.response});
        } else {
          setallUsers({...allUsers, isUserError: true, usersErrorMessage: dta.error});
        }
      });
  };

  //get All insurences
  const getInsurences = () => {
    var url = GET_INSURANCES;
  
    fetch(url, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then((res) => {
          return res.json();
      })
      .then((data) => {
        
        if(data.status === 200) {
       
          setallInsurances({...allInsurances, isInsuranceError: false, allInsurances:data.response});
        } else {
          setallInsurances({...allInsurances, isInsuranceError: true, insurenceErrorMessage: data.error});
        }
      });
  };


  const handleMenu = (value) => {
    
    if(value=="Insurance"){
      setMenu("Insurance")
    }
    else{
      setMenu("USERS")
    }
  };

  return (
    <div style={style}>
        <SideMenu user={user} handleMenu={handleMenu}   heading ={menu}/>
        {menu==="USERS"?<UsersTable user={user} allUsers={allUsers}/>:<MainTable user={user} allInsurances={allInsurances}/>}
    </div>
  );
}
