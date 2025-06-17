
# Bluewater PHPDoc Standards

**Bluewater Framework requires all PHP code to be fully and accurately documented using PHPDoc.**
The standards, templates, and guidance below are **mandatory** for all contributions.

---

## Table of Contents

1. [General Requirements](#general-requirements)
2. [Tag Usage by Element Type](#tag-usage-by-element-type)
3. [File-Level DocBlock](#file-level-docblock)
4. [Class-Level DocBlock](#class-level-docblock)
5. [Interface-Level DocBlock](#interface-level-docblock)
6. [Trait-Level DocBlock](#trait-level-docblock)
7. [Method-Level DocBlock](#method-level-docblock)
8. [Property-Level DocBlock](#property-level-docblock)
9. [Constant-Level DocBlock](#constant-level-docblock)
10. [Variable-Level DocBlock](#variable-level-docblock)
11. [Global-Level DocBlock](#global-level-docblock)
12. [Template Tag Glossary](#template-tag-glossary)
13. [Frequently Asked Questions FAQ](#frequently-asked-questions-faq)
14. [Further Reading](#further-reading)

---

## General Requirements

* Every PHP file must begin with a file-level DocBlock using the File template.
* Every class, interface, trait, method, property, constant, variable, and global must have its own DocBlock using the corresponding template below.
* Tags, blank lines, HTML formatting, and ordering must match the examples.
* **Complete all required fields** (author, package, copyright, etc.).
* **Documentation is subject to automated and manual review.** Missing or incomplete documentation will block merges.

---

## Tag Usage by Element Type

Certainly. Below is the **complete badge-enabled Tag Usage by Element Type table** for inclusion in your Bluewater PHPDoc standards.

---



## Tag Usage by Element Type

This table summarizes **which tags are required or optional for each code element type**.

**Legend:**  
![Required](https://img.shields.io/badge/Required-red?style=flat-square) = Required  
![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square) = Optional  
![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) = Not Used

| Tag           | File                                                                                                         | Class                                                                                                        | Interface                                                                                                    | Trait                                                                                                        | Method                                                                                                       | Property                                                                                                     | Constant                                                                                                     | Variable                                                                                                     | Global                                                                                                       |
|---------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
| `@package`    | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@subpackage` | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@author`     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@license`    | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@copyright`  | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@link`       | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@tutorial`   | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@see`        | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@since`      | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@deprecated` | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@todo`       | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@extends`    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@uses`       | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@var`        | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@property`   | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@param`      | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) |
| `@return`     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat)                                      |
| `@static`     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@abstract`   | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    |
| `@access`     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     |
| `@global`     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Optional](https://img.shields.io/badge/Optional-blue?style=flat-square)                                    | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     |
| `@filesource` | ![Required](https://img.shields.io/badge/Required-red?style=flat-square)                                     | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) | ![Not Used](https://img.shields.io/badge/Not_Used-lightgrey?style=flat-square\&logo=delete\&logoColor=white) |

---

> **This badge-enabled table offers instant visual feedback, supports accessibility, and sets clear documentation expectations for every contributor. Use it in `/docs/en/contribute/phpdoc.md` or anywhere clarity is critical.**

---

## File-Level DocBlock

```php
/**
 * This file is part of Bluewater MVC.<br />
 * <i>Copyright (c) 2020 - {{YEAR}} Walter Torres <walter@torres.ws></i>
 *
 * <b>NOTICE OF LICENSE</b><br />
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.
 * It is also available through the world-wide-web at:
 * {@link http://opensource.org/licenses/osl-3.0.php}.<br />
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@bluewatermvc.org so one can sent to you immediately.
 *
 * <b>DISCLAIMER</b><br />
 * Do not modify this file if you wish to upgrade Bluewater MVC
 * in the future. If you wish to customize Bluewater MVC for your needs
 * please refer to {@link http://web.bluewatermvc.org} for more information.
 *
 * PHP version 8.0+
 *
 * @category    Bluewater
 * @package     Bluewater_Core
 * @subpackage  Bluewater_Module
 * @link        http://web.bluewatermvc.org
 *
 * @copyright   Copyright (c) 2020 - {{YEAR}} Walter Torres <walter@torres.ws>
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 * @author      Walter Torres <walter@torres.ws>
 *
 * @filesource
 *
 */
```

---

## Class-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Multiline description can go here. It will
 * be picked up as written.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @package package_name
 * @subpackage subpackage_name
 *
 * @author name <email address>
 *
 * @extends class_name
 * @uses class|method|global|variable description
 *
 * @abstract [Used to declare class as "place holders" only]
 * @final [declare a method that cannot be overridden in a child class]
 *
 * @todo desc [Document changes that will be made in the future]
 *
 * @tutorial /path/to/tutorial.php Complete Class tutorial
 * @link url://path/to/example.php description
 *
 * @PHPUnit Not Defined
 */
class ClassName
{
    // ...
}
```

---

## Interface-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Interface description, requirements, and usage.
 *
 * @package package_name
 * @subpackage subpackage_name
 * @author name <email>
 * @since version
 * @access public
 * @interface
 */
interface InterfaceName
{
    // ...
}
```

---

## Trait-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Trait description and rationale for use.
 *
 * @package package_name
 * @subpackage subpackage_name
 * @author name <email>
 * @since version
 * @access public|protected|private
 * @trait
 */
trait TraitName
{
    // ...
}
```

---

## Method-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Multiline description can go here and
 * it will be picked up as written.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @author name <email address>
 *
 * @uses class|method|global|property description
 *
 * @static [can be called outside of Class scope]
 * @abstract [Used to declare class as "place holders" only]
 * @access private|protected|public
 * @final [declare a method that cannot be overridden in a child class]
 *
 * @global array|bool|int|float|object|string|mixed $_GLOBALS["myvar"]
 * @staticvar array|bool|int|float|object|string|mixed $paramname description
 *
 * @param array|bool|int|float|object|string|mixed $paramname description
 * @return array|bool|int|float|object|string|mixed description
 *
 * @todo desc [Document changes that will be made in the future]
 *
 * @since version number
 * @deprecated version/info string
 *
 * @PHPUnit Not Defined
 */
public function methodName($param1)
{
    // ...
}
```

---

## Property-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Multiline description can go here and
 * it will be picked up as written.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @name property_name
 * @property private|protected|public array|bool|int|float|object|string|mixed description
 *
 * @static [can be called outside of Class scope]
 * @abstract [Used to declare class as "place holders" only]
 * @access private|protected|public
 * @final [declare a method that cannot be overridden in a child class]
 *
 * @since version number
 * @deprecated version/info string
 */
private string $property_name;
```

---

## Constant-Level DocBlock

```php
/**
 * general description of constant
 * can be multilines, but no blank lines between.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @name constant_name
 * @access private|protected|public
 *
 * @constant private|protected|public array|bool|int|float|object|string|mixed description
 *
 * @since version number
 * @deprecated version/info string
 */
public const CONSTANT_NAME = 'value';
```

---

## Variable-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Multiline description can go here and
 * it will be picked up as written.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @name variable_name
 * @var public array|bool|int|float|object|string|mixed description
 *
 * @since version number
 * @deprecated version/info string
 */
$variable_name = 123;
```

---

## Global-Level DocBlock

```php
/**
 * Brief Desc line, one line. Next line MUST be blank
 *
 * Multiline description can go here and
 * it will be picked up as written.<br>
 * If you <i>want</i> formatting, you <b>need</b> to add HTML tags.
 *
 * @name global_name
 * @global public array|bool|int|float|object|string|mixed description
 *
 * @since version number
 * @deprecated version/info string
 */
```

---

## Template Tag Glossary

For **full definitions** and guidance on all PHPDoc tags, refer to [phpdoc\_info.txt](../phpdoc_info.txt) in project resources.

**Most common tags:**

* `@package`, `@subpackage` — Code organization.
* `@author`
* `@license`
* `@copyright`
* `@link`, `@see`, `@tutorial`
* `@since`, `@deprecated`
* `@todo`
* `@param`, `@return`
* `@access`
* `@var`, `@property`, `@constant`, `@global`
* `@static`, `@final`, `@abstract`
* `@filesource`

**Formatting reminders:**

* Use HTML tags for formatting inside DocBlocks.
* Use fully qualified types: `int`, `string`, `array`, `object`, `bool`, `mixed`.

---

## Frequently Asked Questions FAQ

### Q: Is PHPDoc required for all code?

**A:** Yes. Every class, interface, trait, method, property, constant, variable, and global must be documented as shown.

### Q: What if I don’t know all the info for a tag?

**A:** Leave a `@todo` tag and clearly indicate what’s missing. The code will not be merged until required fields are complete.

### Q: Can I add custom tags?

**A:** Use only the tags listed in this guide unless you have approval from a lead maintainer.

### Q: How do I update copyright, author, or license?

**A:** Always use the latest year, your name/email, and the project’s official license. Do not alter the license text.

### Q: What if a method doesn’t return anything?

**A:** Use `@return void`.

### Q: Are blank lines and tag order mandatory?

**A:** Yes. Adherence to template structure is enforced during code review and by automation.

### Q: Where can I find all allowed tags and their usage?

**A:** See [phpdoc\_info.txt](../phpdoc_info.txt) and [phpdoc.org](https://docs.phpdoc.org/).

### Q: Are code examples allowed in DocBlocks?

**A:** Yes, use `<pre><code>...</code></pre>` HTML blocks for clarity.

---

## Further Reading

* [PHPDoc Standard Documentation](https://docs.phpdoc.org/)
* [Bluewater CONTRIBUTING](../../../CONTRIBUTING.md)
* [PSR-5 PHPDoc Standard (draft)](https://www.php-fig.org/psr/psr-5/)
* [phpdoc\_info.txt](../phpdoc_info.txt)

---

> **This document is the single source of truth for PHPDoc style and structure in Bluewater.
> All code merged into Bluewater must comply with these standards. Non-compliance will block reviews and merges.
> For help, contact the documentation or core team.**

---

*Last updated: {{DATE}}*
