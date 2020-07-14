import { equal } from 'assert';
import Mod from '../index';
describe("Typescript usage suite", () => {
  it("should be able to execute a test", () => {
    equal(Mod.test(''), true);
  });
});