<div align = "center">
  <p>This README is available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/ruby-stock-picker/blob/main/README.md" target="_blank">
    <img src="https://img.shields.io/badge/Language-Portuguese-green"/>
  </a>
</div>

<div align="center">
  
  # Study Repository - Ruby stock picker
</div>

<p align="justify">
  This project was developed with the goal of learning more about the Ruby programming language and its concepts, by applying them in the construction of a program that takes an array of daily values for a unit of a particular product. The index of each position in the array represents a day, with days starting from 0. The program returns to the user an array with two positions. The first position indicates the best day to buy, and the second position indicates the best day to sell the product unit. The selection of days is done in a way that maximizes profit, keeping in mind that the product must be purchased before it can be sold.
</p>

## :movie_camera: Project demonstration

https://github.com/vitor0p9f/ruby-stock-picker/assets/153991573/8dcaa278-4c21-4a5c-afc5-603fdfe1fd77

## :gem: Used Gems

* Rspec

## :page_facing_up: Used Design Patterns

* TDD (_Test Driven Development_)
* Conventional commits

## :pushpin: Acquired Knowledge

* How to apply TDD to projects.
* How to use Docker to create application containers.
* Writing better commit messages with conventional commits patterns.
* Loops in Ruby.
* Input and output of information in Ruby.
* Array manipulation using the _slice_, _reject_ and _delete_ methods.

## :triangular_flag_on_post: Challenges Encountered

## :rocket: Running the Project 

### 1. Clone the repository to your machine

Once the repository is on your machine, enter the newly cloned directory.

To run this project on your own machine, you can choose between the options:

* Run the project using Docker.
* Run the project by installing the dependencies.

### :whale2: Using Docker

#### :construction: Requirements

* Have Docker installed and configured on your machine.

#### 2. Build a project image using the following command:

```bash
docker build -t ruby-stock-picker .
```

The created image will have the same name as the project.

#### 3. Create a container based on the newly created image using the command:

```bash
docker run -it --name ruby-stock-picker ruby-stock-picker
```

The above command will use the previously created image to create a container with the project name.

After running the above command, the container's terminal should automatically open, already executing the project code.

To run the project again without creating a new container, simply run the following command:

```bash
docker start -i ruby-stock-picker
```

### :link: Installing Dependencies

#### :construction: Requirements

* Have Ruby installed on your machine.
* I recommend using tools like RVM or rbenv to allow the installation of Gems without administrator permission.

#### 2. Install project dependencies by running the command:

```bash
bundle install
```

#### 3. Run the project by executing the command:

```bash
ruby stock_picker.rb
```
