(window.webpackJsonp=window.webpackJsonp||[]).push([[33,6,8],{329:function(t,e,o){t.exports=o.p+"img/logo.0117b0e.png"},330:function(t,e,o){t.exports=o.p+"img/face3.543e4d2.jpg"},331:function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAYCAYAAAAPtVbGAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAABUSURBVHgB7dGxDQAhCIVh7ipKV7oNbhrWkFGtaVAbOzuMib6v0JAQmp8IYJWnPyLyty9TrGJmn6qWt0/uniheYuYVd0+H8JeKCD8CzxYiwiMwbFQBmOgk2QVagYgAAAAASUVORK5CYII="},334:function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAIeSURBVHgB1VVNbptQEP7GQLrpwkcgN3BPUPsGWVaV3dITBO+qhMogOWl3dk8QklhVl+4J4huEG5QjILU7A6/zngkJ8LColU0+yTJ+8/PNN7wZAy8dpDsU788GyPOEfn6LtfbJucuhC37cAPk1tvmmzbdXCXz32RYT7w5G7x6WdaeItAwUQcjkGHKKK+WrSPcokMmlIz/ZT8wxtttRW3U7NWcO+834Y3M2n27mgV6BZc2qyVU4k5pXjaRS6djz5TfdXoYwshGfxqzKryt50iLhQI9ho1Wm6XK1Myb/LSZfFhSyQkWCRKoRjtvXEEhjC47yio1Wc5er3VUN4ZYkAt/Z3Ef62m0SCPFLn12EKrgGJtnQ7cUxK4kUydgbsrKlKpTwtkkACrX5jSzAPuSYFgUOKPQTVhHzr0GDQFYEda9rSE0b+2CakWqNla2LkwC5KIuqDJpw+Kpm5j1kH0sPEdHNxRsciMqg7XqdTyseggbyJeI5CBSJvNcCtb7zS/zgzXAAqM0gxuchiD7W3Hmo/kwpXCaPfnx7kPVp9XX9XwQqWO4ltW8qITEnDLA92uBVdsov1C3PNWtlP4Hj95GlclWcoBsSZPmIflxGnQhKorG3ZM9TdEMC4+/xQxt7XSKK1RCgG+SqKAetk4IHsJITnouFWs3tXrFaIQU6KSirWc3XamsKcd2WvNiqjzE4EGrqU8PfLTay1T+cmX7SLcaXjX/yrOP2f62HrAAAAABJRU5ErkJggg=="},341:function(t,e,o){var content=o(345);content.__esModule&&(content=content.default),"string"==typeof content&&(content=[[t.i,content,""]]),content.locals&&(t.exports=content.locals);(0,o(81).default)("257af960",content,!0,{sourceMap:!1})},342:function(t,e,o){"use strict";o.r(e);var r={data:function(){return{login_pop_modal:!1,reg_pop_modal:!1,user_data:"",role:"",image:""}},mounted:function(){null!=this.$cookies.get("login_api")&&(this.user_data=this.$cookies.get("login_api")[0].user_email,this.role=this.$cookies.get("login_api")[0].role,this.image=this.$cookies.get("login_api")[0].image)},methods:{login_api:function(t){console.log(t),t.length&&(this.login_pop_modal=!1,this.user_data=t[0].user_email)},login_pop:function(t){this.$router.push({path:"/login",query:{value:t}})},reg_pop:function(t){this.$router.push({path:"/registration",query:{value:t}})},logout:function(){this.$cookies.remove("login_api"),this.user_data=""},dashboard:function(t){"customer"==t&&this.$router.push({path:"/admin/admin_transaction"}),"seller"==t&&this.$router.push({path:"/admin/admin_dashboard_host"}),"admin"==t&&this.$router.push({path:"/admin/admin_dashboard"})}}},n=(o(344),o(65)),component=Object(n.a)(r,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("b-navbar",{staticClass:"shadow",attrs:{toggleable:"lg",variant:"faded",type:"light"}},[r("b-container",{attrs:{fluid:"sm"}},[r("b-navbar-brand",[r("NuxtLink",{attrs:{to:"/"}},[r("img",{attrs:{src:o(329)}})])],1),t._v(" "),r("b-navbar-toggle",{attrs:{target:"nav-collapse"}}),t._v(" "),r("b-collapse",{staticClass:"justify-content-around",attrs:{id:"nav-collapse","is-nav":""}},[r("b-navbar-nav",{staticClass:"ml-auto"},[r("NuxtLink",{staticClass:"head_link",attrs:{to:"properties"}},[t._v("Find a home")]),t._v(" "),r("NuxtLink",{staticClass:"head_link",attrs:{to:"blog_listings"}},[t._v("Blogs")])],1),t._v(" "),r("b-navbar-nav",{staticClass:"ml-auto"},[r("b-nav-item",{staticClass:"nav_mar",staticStyle:{"margin-top":"13px"},on:{click:function(e){return t.reg_pop("host_reg")}}},[t._v("Become a Host")]),t._v(" "),""!=t.user_data?r("b-button",{staticClass:"ml-3",staticStyle:{padding:"8px 25px 10px 25px","margin-top":"10px"},attrs:{pill:"",id:"btn_color"},on:{click:function(e){return t.logout()}}},[r("b",[t._v("Log Out")])]):t._e(),t._v(" "),""==t.user_data?r("b-button",{staticClass:"ml-3",staticStyle:{padding:"8px 25px 10px 25px","margin-top":"10px"},attrs:{pill:"",id:"btn_color"},on:{click:function(e){return t.login_pop("normal_login")}}},[r("b",[t._v("Log In")])]):t._e(),t._v(" "),""!=t.user_data?r("ul",{staticClass:"navbar-nav navbar-nav-right",staticStyle:{"margin-left":"25px"}},[r("li",{staticClass:"nav-item nav-profile dropdown1 drop_btn_sty1"},[r("div",{staticClass:"dropdown1"},[r("span",[r("img",{staticStyle:{"margin-right":"15px"},attrs:{src:o(331)}})]),t._v(" "),null==t.image?r("img",{staticStyle:{"border-radius":"100%",height:"50px"},attrs:{src:o(330),alt:"profile"}}):r("img",{staticStyle:{"border-radius":"100%",height:"50px"},attrs:{src:t.image,alt:"profile"}}),t._v(" "),r("div",{staticClass:"dropdown-content1"},[r("a",{staticClass:"dropdown-item",on:{click:function(e){return t.dashboard("customer")}}},[r("i",{staticClass:"ti-settings text-success"}),t._v("Manage Your Account\n                ")])])])])]):t._e()],1)],1)],1)],1)}),[],!1,null,null,null);e.default=component.exports},343:function(t,e,o){"use strict";o.r(e);var r=[function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("div",{staticClass:"row"},[r("div",{staticClass:"col-3 ftr-w-100"},[r("img",{attrs:{src:o(329)}}),r("br"),r("br"),r("label",[t._v("Our properties are conveniently located in the heart of Midtown Atlanta near Atlantic Station and Georgia Tech University. Our properties are positioned on the west side of Midtown which is served by all major interstates and roads.")])]),t._v(" "),r("div",{staticClass:"col-3 ftr-w-100"},[r("h5",[t._v("Quick Links")]),r("br"),r("label",[t._v("Vactional Rentals")]),r("br"),r("label",[t._v("Vactional Rentals")]),r("br"),r("label",[t._v("Warehouse")]),r("br"),r("label",[t._v("Blog")])]),t._v(" "),r("div",{staticClass:"col-3 ftr-w-100"},[r("h5",[t._v("Support")]),r("br"),t._v(" "),r("img",{attrs:{src:o(346)}}),t._v(" "),r("label",{staticStyle:{"margin-left":"12px"}},[r("b",[t._v("Area 4 Rent")])]),t._v(" "),r("label",{staticStyle:{"margin-left":"36px"}},[t._v("403 W. Ponce De Leon Ave.")]),t._v(" "),r("label",{staticStyle:{"margin-left":"36px"}},[t._v("Suite 206, Decatur, GA 30030")]),r("br"),t._v(" "),r("img",{attrs:{src:o(334)}}),t._v(" "),r("label",{staticStyle:{"margin-left":"12px"}},[t._v("(404) 907-4093")]),r("br"),t._v(" "),r("img",{attrs:{src:o(334)}}),t._v(" "),r("label",{staticStyle:{"margin-left":"12px"}},[t._v("(844) 273-6138 (Fax)")]),r("br"),t._v(" "),r("img",{attrs:{src:o(334)}}),t._v(" "),r("label",{staticStyle:{"margin-left":"12px"}},[t._v("(470) 231-9266 (After Hours)")]),r("br"),t._v(" "),r("img",{attrs:{src:o(347)}}),t._v(" "),r("label",{staticStyle:{"margin-left":"12px"}},[t._v("info@falconviewhomes.com")])]),t._v(" "),r("div",{staticClass:"col-3 ftr-w-100"},[r("h5",[t._v("Follow Un on")]),r("br"),r("img",{staticStyle:{width:"30px"},attrs:{src:o(348)}}),t._v("  "),r("label",[t._v("facebook")]),r("br"),r("img",{attrs:{src:o(349)}}),t._v("  "),r("label",[t._v("Twitter")]),r("br"),r("img",{attrs:{src:o(350)}}),t._v("  "),r("label",[t._v("Instagram")])])]),t._v(" "),r("br"),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 border-top border-grey",staticStyle:{"text-align":"center"}},[r("label",{staticStyle:{padding:"20px 0px 20px 0px"}},[t._v("© Copyright 2022 Area4Rent , LLC. All rights reserved. Developed by "),r("a",{attrs:{href:"http://www.kwanzaagency.com/"}},[t._v("kwanza agency")])])])])])}],n=o(65),component=Object(n.a)({},(function(){var t=this,e=t.$createElement;t._self._c;return t._m(0)}),r,!1,null,null,null);e.default=component.exports},344:function(t,e,o){"use strict";o(341)},345:function(t,e,o){var r=o(80)(!1);r.push([t.i,".btn-success{color:#fff;background-color:#ff355b!important;border-color:red!important;border-radius:20px;padding:12px}.dropdown1{position:relative;display:inline-block;padding:1px 4px 2px 5px}.dropdown-content1{display:none;position:absolute;background-color:#f9f9f9;min-width:160px;box-shadow:0 8px 16px 0 rgba(0,0,0,.2);padding:12px 16px;z-index:1}.dropdown1:hover .dropdown-content1{display:block}.drop_btn_sty1{box-shadow:0 1px 5px 0;height:55px;width:114px;border-radius:8px;margin-top:7px}",""]),t.exports=r},346:function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAGWSURBVHgB3VVBTsJAFH2f4k5ij1BuADcoN3DpAiPeAHYmkkATIC7xBNRgjEtvIDeQG9gbSKI7SsfpFGPr/M4Ud/qSSaYz/7838+dNB/jrIFuA6A59EF2AEh+CvCxLrCFqsok7up+sfiUgzq48HNUXsuvDjCds4wE93kSVBTLyo2fZ81AJFGG77XAimoA47btoNF6qk+dEnPc2hfNNfrSmxZ00RoeTq6V5iI/7mmwhpDd2sYtfZdflObDeZ7XAYwPno5nfRXEHcdziyUUkyTvSMe20YZe0FZkOV+6iIP6zRD74pQd5O9LDTFoUt3yoMAqU8NciZnTFxhK55QKCNmxSkng6ETOmOITBRekN5eA4I3U3vjhU3xmxsUQFDv0enA/fUOai77KUmoGW02Z+RD+DssPL4O+bbQEGgXp9Dt6CFkgrO7vAKkDhWJInAxwuEFCo/4tYm9JyFspSBajMjUDlcFzGvO51qN4CY1D6Jkx7ZdPGi6YSTYcu50zkVoFMZNJny5WWJZ2z5aMisqdTLLIPurQ9lf8HnxjTlGNEEl44AAAAAElFTkSuQmCC"},347:function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAASCAYAAABb0P4QAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAFESURBVHgBrZRBToNAFIb/N0Dioo0cwSPADeoJjHurHKFuDQmQUNd6AqHt3iOUG7RH6A0kcdMN83yDphFFqXG+BDKTmfmYN7x5hA/4Kp6AkEgzkMfH8VSALml5X5gOtbLrOAEjxX8gpLTIM+LpXQSoJ9iAca5EdgNbyJGJEBPYI1CdLuNRXrc4Fkb2vuaA3xUSMS3nD2h0KLN3v5h2cHRIqzyFwktHwdOYu5OpgPMquzzxod1n2UHQdfEWbnOJel/jdJxA8+zzsOr5eoRmvMFe1Is87IQkbVrNQzOG0Wj9VfaDsF15Bs/dmJSSsGYmHcxj2u0F8Ly1/NGgb2VPyN+mFBJmCa1ruOpi6AK4GESOgBDBUSbkQRQsY4Q1LGKEW9iCUak2221BulSSCpUVqThMTaRD35QxlspDfyoWtYjMkWXtxoQ33ut2DAZcej8AAAAASUVORK5CYII="},348:function(t,e,o){t.exports=o.p+"img/f-face.3b587c7.png"},349:function(t,e){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAJeSURBVHgB7VZNbtNAFP5mHFpAFQo38IgLmBskEm3ZtYimEqumN6AnSHICcoMkK6TS0rJLYEF6gpg1SE5vENEu0iaeYZ5Jke3YzpgGscm387w373t+f/OAFVb4z2BYIl58+F6yWKGmAEcbLkLBBYfLbtHovhHDsN70uuD2D8VozoHN4x9Vy7f64Qsm2Dq9rDEl64lChqEvp4cWuAPGd+iotyfKv0VxQyfegDEUb37iOXmI+5InOKMjUh6PMSL7fF4OR4fOXn+Cwcv3nr3IXunMKzLIKkyh06IeoPVwQ76lT56haKs1fKWUZNlb8/0S6cIcuzpaF93Ks3qaA8OwE5xbre1Tr5UaDcUc5IAmb9yREwpz9hQ6ugZq0UNUddiq2ydeH0p+8iHdP1XM+UjLjcEfP2pFHIorUE7XJQYmYdW8o5mRIgxxc4Wn4eKOpIDCrMnfSd9v3BnPAhHnISfEOyviAPW+TsEu5T2vYUO48YOENpQd/DsYODDhTZPw/w2YLvC5syTFzWPP4RbOcvb3AnYMe6+FiB8nDqIv+4IekLJSqrOsaDCZnNpC2gWagkwxG0th18NtwttJotRRrLvhCEsC86PPsZEDn/fEuS6aBu6PdndftNOEPOMiuhVRZxMIqoUgjHmh7+jJd5StYoitj5cHkLJpPKBm7/6ixSbTgVLLKxY2pg6tWfQJc/T1n78yWWgiDsz6/wD0lxKOYrDzjGRqWaqbXkU0Te9EaiDofx/fggHEZotlDuLbK4g85ITUFAQLiIWS4tjRBLY+CkdjGJBCXjDFz8fXcE33xxVWiOMX2BT53mXlz0MAAAAASUVORK5CYII="},350:function(t,e,o){t.exports=o.p+"img/f-insta.6ec6e0d.png"},457:function(t,e,o){"use strict";o.r(e);var r={data:function(){return{user_email:"",password:"",errors:[],login_tokken:"",form_typ:"",login_error:"",message:""}},mounted:function(){this.form_typ="";var t=this.$route.query.value;"normal_login"==t&&(this.form_typ="User"),"host_reg"==t&&(this.form_typ="Host")},watch:{"$route.query.value":{handler:function(t){"normal_login"==t&&(this.form_typ="User"),"host_reg"==t&&(this.form_typ="Host")},deep:!0,immediate:!0}},methods:{register:function(){var t=this.$route.query.value;this.$router.push({path:"/registration",query:{value:t}})},Login:function(){var t=this;this.$axios.$post("/user/login",{role:this.role,password:this.password,user_email:this.user_email}).then((function(e){t.login_tokken=e.data.login_tokken,""==t.login_tokken&&(t.message="Wrong email and password try again!"),t.$cookies.set("login_api",t.login_tokken),t.$emit("login_api",t.login_tokken),"admin"==e.data.login_tokken[0].role&&t.$router.push({path:"/admin/admin_dashboard"});var o=t.$route.query.value;"customer"==e.data.login_tokken[0].role&&"host_reg"==o?(t.$cookies.remove("login_api"),t.login_error="You are not Host account create new Host account"):"customer"==e.data.login_tokken[0].role&&t.$router.push({path:"/"}),"seller"==e.data.login_tokken[0].role&&"normal_login"==o?(t.$cookies.remove("login_api"),t.login_error="You are not User account create new User account"):"seller"==e.data.login_tokken[0].role&&t.$router.push({path:"admin/admin_dashboard_host"})})).catch((function(e){t.errors=e.response.data}))}}},n=o(65),component=Object(n.a)(r,(function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("div",[o("Header"),t._v(" "),o("b-container",{staticStyle:{background:"white","text-align":"-webkit-center"},attrs:{fluid:"sm"}},[o("div",{staticStyle:{height:"100px"}}),t._v(" "),o("div",{staticStyle:{"max-width":"500px",width:"100%"}},[o("div",{staticClass:"row cus_log_des"},[o("div",{staticClass:"col-12"},[o("h3",[t._v(t._s(t.form_typ))]),t._v(" "),o("p",{staticStyle:{color:"red"}},[t._v(t._s(t.login_error))]),t._v(" "),o("div",{staticClass:"form-group"},[o("ul",{staticStyle:{color:"red"}},t._l(t.errors,(function(e,r){return o("li",{key:r},[t._v(t._s(e[0]))])})),0)]),t._v(" "),o("div",{staticClass:"form-group"},[o("p",{staticStyle:{color:"#FF355B"}},[t._v(t._s(t.message))])]),t._v(" "),o("div",{staticClass:"form-group"},[o("label",{staticStyle:{float:"left"},attrs:{for:"usr"}},[t._v("Email")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.user_email,expression:"user_email"}],staticClass:"form-control cus-field-styl",attrs:{type:"text",autocomplete:"off"},domProps:{value:t.user_email},on:{input:function(e){e.target.composing||(t.user_email=e.target.value)}}})]),t._v(" "),o("div",{staticClass:"form-group"},[o("label",{staticStyle:{float:"left"},attrs:{for:"usr"}},[t._v("Password")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],staticClass:"form-control cus-field-styl",attrs:{type:"text",autocomplete:"off"},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})]),t._v(" "),o("div",{staticClass:"form-group"},[o("b-form-checkbox",{staticStyle:{float:"left"},attrs:{value:"me"}},[t._v("Remember me")]),t._v(" "),o("label",{staticStyle:{float:"right"},attrs:{for:"usr"}},[t._v("Forget Password?")]),t._v(" "),o("br"),t._v(" "),o("br"),t._v(" "),o("b-button",{staticClass:"cus-field-styl",staticStyle:{"background-color":"#FF355B"},attrs:{block:"",variant:"primary"},on:{click:function(e){return t.Login()}}},[t._v("Sign In")]),t._v(" "),o("br"),t._v(" "),o("br"),t._v(" "),o("p",{staticStyle:{float:"left"},attrs:{for:"usr"}},[t._v("if you are not register user click here to "),o("b",{staticStyle:{color:"red",cursor:"pointer"},on:{click:function(e){return t.register()}}},[t._v("Sign Up")])])],1)])]),t._v(" "),o("div",{staticStyle:{height:"150px"}})])]),t._v(" "),o("b-container",[o("Footer")],1)],1)}),[],!1,null,"21cd701c",null);e.default=component.exports;installComponents(component,{Header:o(342).default,Footer:o(343).default})}}]);