<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Simple Login Page in DB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
   <div class="vh-100 d-flex justify-content-center align-items-center">
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-12 col-md-8 col-lg-6">
        <div class="border border-3 border-primary"></div>
        <div class="card bg-white shadow-lg">
          <div class="card-body p-5">
            <form class="mb-3 mt-md-4" action="LoginDemo" method="post">
            
            
            
            
              <h2 class="fw-bold mb-2 text-uppercase ">Login Page</h2>
              <p class=" mb-5">Please enter your login and password!</p>
              
                <label for="email" class="form-label ">User name</label>
                <input type="text" class="form-control" id="text" placeholder="name@example.com" name="name" required>
                
                
                <label for="password" class="form-label ">Password</label>
                <input type="password" class="form-control" id="password" placeholder="*******" name="pass" required><br>
                
              <div class="d-grid">
                <button class="btn btn-outline-dark" type="submit">Login</button><br>
				 <button class="btn btn-outline-dark" type="reset">Reset</button>
                
                
                
              </div>
            </form>
            <div>
              <p class="mb-0  text-center">Don't have an account? <a href="signup.html"
                  class="text-primary fw-bold">Sign
                  Up</a></p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>