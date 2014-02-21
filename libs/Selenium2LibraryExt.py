__author__ = 'ferronhanse'

from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger
from Selenium2Library.keywords.keywordgroup import KeywordGroup


def _get_s2l():
    return BuiltIn().get_library_instance('Selenium2Library')


class Selenium2LibraryExt(KeywordGroup):

    def _run_on_failure(self):
        # required for on failure in this class to work - call Selenium2Library's on failure
        _get_s2l()._run_on_failure()

    def click_page_element(self, locator):
        s2l = _get_s2l()
        elem = s2l._element_find(locator, True, True)
        if elem is not None:
            try:
                elem.click()
            except Exception, e:
                print '# exception thrown #'
                logger.info(e)


