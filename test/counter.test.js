const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Counter", function () {

    let counter;

    beforeEach(async function(){
        const v = await ethers.getContractFactory("Counter");
        counter = await v.deploy();
        await counter.deployed();
    });

    it("add num1 and num2", async function(){
        await counter.add(10,25);
        expect(await counter.getTotal()).to.equal(35);
    });

    it("subtract num2 from num1", async function(){
        await counter.subtract(12,7);
        expect(await counter.getSubtracted()).to.equal(5);
    });

    it("multiply num1 and num2", async function(){
        await counter.multiply(4,3);
        expect(await counter.getMultiplied()).to.equal(12);
    });

    it("divide num1 by num2", async function(){
        await counter.divide(24,8);
        expect(await counter.getDivided()).to.equal(3);
    });


})
