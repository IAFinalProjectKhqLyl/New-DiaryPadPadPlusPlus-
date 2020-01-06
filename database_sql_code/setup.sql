-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2019-12-31 01:55:34
-- 服务器版本： 5.7.26
-- PHP 版本： 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `diary_pad`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `UNAME` varchar(255) NOT NULL,
  `AID` int(255) NOT NULL,
  `CONTENT` text NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  PRIMARY KEY (`UNAME`,`AID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`UNAME`, `AID`, `CONTENT`, `TITLE`) VALUES
('David', 3, '### Javascript is the best language in the world!\nJavascript is the best language in the world!', ''),
('David', 2, '### I am a university student\nI am a university student', ''),
('David', 1, '## I like php and javascript\nI like php and javascript', ''),
('David', 4, '### What your favourit food?\nWhat your favourit food?', ''),
('David', 5, '### Do you like what you see?\nDo you like what you see?', ''),
('David', 6, '### Hello word!\nHello word!', ''),
('David', 7, 'php is the best lan in the world', ''),
('David', 8, 'TAAAAAAAAAAA', ''),
('Kinney', 9, '# nalaba kotaewa only has one, anadani xiuseio qikaoooooo!!!!!!', ''),
('David', 10, '## new article\nit was a sunny day, i went out with my family\nsuddenly, senbei jflkds\nsfdlsjfeww \ndsfwaef', ''),
('David', 11, '##dsflf\nfdsjf\ndsff\nsdfje\ndsfkaf', ''),
('Kinney', 12, '##i like misaka mikoto best\nbut thats not means that to be a someone', ''),
('kamenrider', 13, '## This is my first article\ni was really excited, as this is my first article!!!\nbye bye.', ''),
('kamenrider', 14, 'i love jk', ''),
('David', 16, 'KaTeX is a fast, easy-to-use JavaScript library for TeX math rendering on the web.\n\n * **Fast:** KaTeX renders its math synchronously and doesn\'t need to reflow the page. See how it compares to a competitor in [this speed test](http://www.intmath.com/cg5/katex-mathjax-comparison.php).\n * **Print quality:** KaTeX\'s layout is based on Donald Knuth\'s TeX, the gold standard for math typesetting.\n * **Self contained:** KaTeX has no dependencies and can easily be bundled with your website resources.\n * **Server side rendering:** KaTeX produces the same output regardless of browser or environment, so you can pre-render expressions using Node.js and send them as plain HTML.\n\n\nKaTeX is compatible with all major browsers, including Chrome, Safari, Firefox, Opera, Edge, and IE 9â€“11.\n\nKaTeX supports much (but not all) of LaTeX and many LaTeX packages. See the [list of supported functions](https://katex.org/docs/supported.html).\n\nTry out KaTeX [on the demo page](https://katex.org/#demo)!\n\n## Getting started\n\n### Starter template\n\n```html\n<!DOCTYPE html>\n<!-- KaTeX requires the use of the HTML5 doctype. Without it, KaTeX may not render properly -->\n<html>\n  <head>\n    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css\" integrity=\"sha384-zB1R0rpPzHqg7Kpt0Aljp8JPLqbXI3bhnPWROx27a9N0Ll6ZP/+DiW/UqRcLbRjq\" crossorigin=\"anonymous\">\n\n    <!-- The loading of KaTeX is deferred to speed up page rendering -->\n    <script defer src=\"https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js\" integrity=\"sha384-y23I5Q6l+B6vatafAwxRu/0oK/79VlbSz7Q9aiSZUvyWYIYsd+qj+o24G5ZU2zJz\" crossorigin=\"anonymous\"></script>\n\n    <!-- To automatically render math in text elements, include the auto-render extension: -->\n    <script defer src=\"https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js\" integrity=\"sha384-kWPLUVMOks5AQFrykwIup5lo0m3iMkkHrD0uJ4H5cjeGihAutqP0yW0J6dpFiVkI\" crossorigin=\"anonymous\"\n        onload=\"renderMathInElement(document.body);\"></script>\n  </head>\n  ...\n</html>\n```\n\nYou can also [download KaTeX](https://github.com/KaTeX/KaTeX/releases) and host it yourself.\n\nFor details on how to configure auto-render extension, refer to [the documentation](https://katex.org/docs/autorender.html).\n\n### API\n\nCall `katex.render` to render a TeX expression directly into a DOM element.\nFor example:\n\n```js\nkatex.render(\"c = \\\\pm\\\\sqrt{a^2 + b^2}\", element, {\n    throwOnError: false\n});\n```\n\nCall `katex.renderToString` to generate an HTML string of the rendered math,\ne.g., for server-side rendering.  For example:\n\n```js\nvar html = katex.renderToString(\"c = \\\\pm\\\\sqrt{a^2 + b^2}\", {\n    throwOnError: false\n});\n// \'<span class=\"katex\">...</span>\'\n```\n\nMake sure to include the CSS and font files in both cases.\nIf you are doing all rendering on the server, there is no need to include the\nJavaScript on the client.\n\nThe examples above use the `throwOnError: false` option, which renders invalid\ninputs as the TeX source code in red (by default), with the error message as\nhover text.  For other available options, see the\n[API documentation](https://katex.org/docs/api.html),\n[options documentation](https://katex.org/docs/options.html), and\n[handling errors documentation](https://katex.org/docs/error.html).\n\n## Demo and Documentation\n\nLearn more about using KaTeX [on the website](https://katex.org)!\n\n## Contributing\n\nSee [CONTRIBUTING.md](CONTRIBUTING.md)\n\n## License\n\nKaTeX is licensed under the [MIT License](http://opensource.org/licenses/MIT).\n', ''),
('Tiansuo', 18, '## My first article\nThis is the first article in diarypad!\nIt is very glad to be a part of the diarypad!\nThe website is really awsome!\nDiary pad is the best website!', 'My first Article'),
('Tiansuo', 21, '\n\n**Clone and run for a quick way to see Electron in action.**\n\nThis is a minimal Electron application based on the [Quick Start Guide](https://electronjs.org/docs/tutorial/quick-start) within the Electron documentation.\n\n**Use this app along with the [Electron API Demos](https://electronjs.org/#get-started) app for API code examples to help you get started.**\n\nA basic Electron application needs just these files:\n\n- `package.json` - Points to the app\'s main file and lists its details and dependencies.\n- `main.js` - Starts the app and creates a browser window to render HTML. This is the app\'s **main process**.\n- `index.html` - A web page to render. This is the app\'s **renderer process**.\n\nYou can learn more about each of these components within the [Quick Start Guide](https://electronjs.org/docs/tutorial/quick-start).\n\n## To Use\n\nTo clone and run this repository you\'ll need [Git](https://git-scm.com) and [Node.js](https://nodejs.org/en/download/) (which comes with [npm](http://npmjs.com)) installed on your computer. From your command line:\n\n```bash\n# Clone this repository\ngit clone https://github.com/electron/electron-quick-start\n# Go into the repository\ncd electron-quick-start\n# Install dependencies\nnpm install\n# Run the app\nnpm start\n```\n\nNote: If you\'re using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use `node` from the command prompt.\n\n## Resources for Learning Electron\n\n- [electronjs.org/docs](https://electronjs.org/docs) - all of Electron\'s documentation\n- [electronjs.org/community#boilerplates](https://electronjs.org/community#boilerplates) - sample starter apps created by the community\n- [electron/electron-quick-start](https://github.com/electron/electron-quick-start) - a very basic starter Electron app\n- [electron/simple-samples](https://github.com/electron/simple-samples) - small applications with ideas for taking them further\n- [electron/electron-api-demos](https://github.com/electron/electron-api-demos) - an Electron app that teaches you how to use Electron\n- [hokein/electron-sample-apps](https://github.com/hokein/electron-sample-apps) - small demo apps for the various Electron APIs\n\n## License\n\n[CC0 1.0 (Public Domain)](LICENSE.md)\n', 'Electron-quick-start');

-- --------------------------------------------------------

--
-- 表的结构 `uname`
--

DROP TABLE IF EXISTS `uname`;
CREATE TABLE IF NOT EXISTS `uname` (
  `UNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PASS` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`UNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `uname`
--

INSERT INTO `uname` (`UNAME`, `PASS`, `EMAIL`) VALUES
('David', '123456', 'david@gmail.com'),
('Kinney', '321Misakakhq', 'kehengqiqq@126.com'),
('kamenrider', '12345678O', 'dsfa@someone.com'),
('yalimasnei', 'Goodtimehascome', 'fuekso@234.com'),
('Tiansuo', '114514Tiansuo', 'abc@126.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
