# OrganicEcommerceFrontend

# Steps to Run Project

    1) Create Spring boot project with "web" and "dev-tools" as dependecies
    2)Add maven plugin 
        <plugin>
              <groupId>com.github.eirslett</groupId>
              <artifactId>frontend-maven-plugin</artifactId>
              <version>1.8.0</version>
              <configuration>
                <nodeVersion>v10.18.0</nodeVersion>
              </configuration>
              <executions>
                <execution>
                  <id>install-npm</id>
                  <goals>
                    <goal>install-node-and-npm</goal>
                  </goals>
                </execution>
        </executions>
        <plugin>    
    3)Run mvnw generate-resources // this will install node.exe locally under node folder 
    4) Create local_angular_cli_install.bat to run npm commands
    5) run local_angular_cli_install.bat install @angular/cli@8.3.2 //this will install angular 8 locally
    6) create local_angular_cli_version.bat to run ng command locally 
    7) run local_angular_cli_version.bat --version // to check local angular version
    8) run local_angular_cli_version.bat new client // this will create new angular project
    9) Copy client/.gitignore >> .gitignore
    10) Remove client/node* client/src/favicon.ico client/.gitignore client/.git
    11) copy client/* . // Copy to root project 
    12) remove client 
    13) Replace dist/client to target/classes/static angular.json
    14 ) 
          <execution>
              <id>npm-install</id>
              <goals>
                  <goal>npm</goal>
              </goals>
          </execution>
    15) local_angular_cli_install.bat generate-resources // this will install modules again 
    16) local_angular_cli_version.bat --version // this should show angular version 
    17) 
        <execution>
              <id>npm-build</id>
              <goals>
                  <goal>npm</goal>
              </goals>
              <configuration>
                  <arguments>run-script build</arguments>
              </configuration>
          </execution> // client app will be compiled during maven build
     18)  local_angular_cli_install.bat install bootstrap@4 jquery --save // adding bootstrap 
     19) Add in styles.css 
          @import "~bootstrap/dist/css/bootstrap.css";
     20) check App modules and Spring main file to see first http call 
     21) run mvnw spring-boot:run
