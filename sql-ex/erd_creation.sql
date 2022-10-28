CREATE TABLE Employee(
    IDnum INTEGER PRIMARY KEY NOT NULL,
    fName TEXT,
    midInitial TEXT,
    lName TEXT,
    bDate TEXT,
    address TEXT,
    salary REAL,
    gender TEXT,
    deptNum INTEGER,
    mgrID INTEGER,
    FOREIGN KEY (mgrID) REFERENCES Employee(IDnum),
    FOREIGN KEY (deptNum) REFERENCES Department(number)
);

CREATE TABLE Department(
    name TEXT,
    number INTEGER PRIMARY KEY,
    startDate TEXT,
    mgrID INTEGER,
    FOREIGN KEY (mgrID) REFERENCES Employee(mgrID)
);

CREATE TABLE Project(
    number INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT,
    deptNum INTEGER,
    FOREIGN KEY (deptNum) REFERENCES Department(number)
);

CREATE TABLE Dependent(
    name TEXT,
    relationship TEXT,
    gender TEXT,
    bDate TEXT,
    empID INTEGER,
    PRIMARY KEY (name, empID),
    FOREIGN KEY (empID) REFERENCES Employee(IDnum)
);

CREATE TABLE EmpProject(
    projNum INTEGER,
    empID INTEGER,
    hours REAL,
    PRIMARY KEY (projNum, empID),
    FOREIGN KEY (empID) REFERENCES Employee(IDnum),
    FOREIGN KEY (projNum) REFERENCES Project(number)
);

CREATE TABLE DepLocs(
    deptNum INTEGER,
    location TEXT,
    PRIMARY KEY (deptNum, location),
    FOREIGN KEY (deptNum) REFERENCES Department(number)
);

