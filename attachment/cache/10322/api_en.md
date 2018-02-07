##Dir##
[Api list](#Dir)
- [1.1 Register](#1.1)
- [1.2 Login](#1.2)
- [1.3 Logout](#1.3)


##Api Desc
---
<h3 id="1.1">1.1 Register</h3>

- **Request URL**
> [api/v1/register](#)

- **Request Method** 
>**POST**

- **Request Param**

> 
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| username|  String,**No Null**|  username|
| password|   String,**No Null**|  **md5**|

- **Response**

>
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| code|   Integer|  Result code|
| msg|   String|  Result message|

- **Response Example**
>    
```swift 
{
"code": 0,
"msg": "success"
}
```
---
<h3 id="1.2">1.2Login</h3>

- **Request URL**
> [api/v1/login](#)


- **Request Method** 
>**POST**

- **Request Param**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| username|  String,**不可为空**|  用户名|
| password|   String,不可为空|  **md5**|

- **Response**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| code|   Integer|  Result code|
| msg|   String|  Result message|

- **Response Example**
>    
```swift 
{
"code": 0,
"msg": "success"
}
```
---
<h3 id="1.3">1.3Logout</h3>

- **Request URL**
> [api/v1/logout](#)


- **Request Method** 
>**POST**

- **Request Param**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| uid|  String,**No Null**|  user id|

- **Response**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| code|   Integer|  Result code|
| msg|   String|  Result message|

- **Response Example**
>
```swift
{
"code": 0,
"msg": "success"
}
```
---
<h3 id="1.4">1.4Test</h4>

- **Request URL**
> [api/v1/logout](#)


- **Request Method** 
>**POST**

- **Request Param**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| uid|  String,**No Null**|  user id|

- **Response**

>  
| Param      |     Type |   Desc   |
| :-------- | :--------| :------ |
| code|   Integer|  Result code|
| msg|   String|  Result message|

- **Response Example**
>
```swift
{
"code": 0,
"msg": "success"
}
```
---
