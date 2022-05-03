const sum = require("./sum");

describe('Expect the sum works', () => {

    // Scenario 1
    it('Adds two positives numbers', () => {
        const number1 = 15
        const number2 = 12

        const result = sum(number1, number2)

        // experamos que el resultado sea ---- este valor
        expect(result).toBe(number1+number2)

       // Matchers https://jestjs.io/docs/using-matchers 

    } )
})