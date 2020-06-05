import unittest
import vim_vimrc_refresher as sut


@unittest.skip("Don't forget to test!")
class VimVimrcRefresherTests(unittest.TestCase):

    def test_example_fail(self):
        result = sut.vim_vimrc_refresher_example()
        self.assertEqual("Happy Hacking", result)
