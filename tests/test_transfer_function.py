import unittest
import numpy as np

class ModelConsistencyTests(unittest.TestCase):
    def test_student_parameters(self):
        self.assertEqual(sum(map(int, '401411039')), 23)
        self.assertEqual(int('401411039'[-2:]), 39)

    def test_closed_loop_polynomial(self):
        plant = [1, 2*0.23*np.sqrt(39), 39]
        base = np.polymul(np.polymul([1,5], [1,37]), plant)
        base[-1] += (0.55*39)*28.6
        self.assertTrue(np.allclose(base, [1, 44.87269908, 344.6533609, 2169.44933, 7828.47], rtol=1e-5))

    def test_closed_loop_stability(self):
        den = [1, 44.87269908, 344.6533609, 2169.44933, 7828.47]
        self.assertTrue(np.all(np.real(np.roots(den)) < 0))

if __name__ == '__main__': unittest.main()
