-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-06-2019 a las 01:34:41
-- Versión del servidor: 5.7.26-0ubuntu0.18.04.1
-- Versión de PHP: 5.6.40-8+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `achievo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accessright`
--

CREATE TABLE `accessright` (
  `node` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accessright`
--

INSERT INTO `accessright` (`node`, `action`, `role_id`) VALUES
('crm.campaign', 'add', 1),
('crm.campaign', 'add', 2),
('crm.campaign', 'admin', 1),
('crm.campaign', 'admin', 2),
('crm.campaign', 'delete', 1),
('crm.campaign', 'delete', 2),
('crm.campaign', 'edit', 1),
('crm.campaign', 'edit', 2),
('crm.campaign_status', 'add', 1),
('crm.campaign_status', 'add', 2),
('crm.campaign_status', 'admin', 1),
('crm.campaign_status', 'admin', 2),
('crm.campaign_status', 'delete', 1),
('crm.campaign_status', 'delete', 2),
('crm.campaign_status', 'edit', 1),
('crm.campaign_status', 'edit', 2),
('crm.campaign_type', 'add', 1),
('crm.campaign_type', 'add', 2),
('crm.campaign_type', 'admin', 1),
('crm.campaign_type', 'admin', 2),
('crm.campaign_type', 'delete', 1),
('crm.campaign_type', 'delete', 2),
('crm.campaign_type', 'edit', 1),
('crm.campaign_type', 'edit', 2),
('crm.lead', 'add', 1),
('crm.lead', 'add', 2),
('crm.lead', 'admin', 1),
('crm.lead', 'admin', 2),
('crm.lead', 'convert', 1),
('crm.lead', 'convert', 2),
('crm.lead', 'delete', 1),
('crm.lead', 'delete', 2),
('crm.lead', 'edit', 1),
('crm.lead', 'edit', 2),
('docmanager.document', 'add', 1),
('docmanager.document', 'add', 2),
('docmanager.document', 'delete', 1),
('docmanager.document', 'delete', 2),
('docmanager.document', 'edit', 1),
('docmanager.document', 'edit', 2),
('docmanager.document', 'generate', 1),
('docmanager.document', 'generate', 2),
('docmanager.documenttype', 'add', 1),
('docmanager.documenttype', 'add', 2),
('docmanager.documenttype', 'admin', 1),
('docmanager.documenttype', 'admin', 2),
('docmanager.documenttype', 'delete', 1),
('docmanager.documenttype', 'delete', 2),
('docmanager.documenttype', 'edit', 1),
('docmanager.documenttype', 'edit', 2),
('employee.department', 'add', 1),
('employee.department', 'add', 2),
('employee.department', 'admin', 1),
('employee.department', 'admin', 2),
('employee.department', 'delete', 1),
('employee.department', 'delete', 2),
('employee.department', 'edit', 1),
('employee.department', 'edit', 2),
('employee.employee', 'add', 1),
('employee.employee', 'admin', 1),
('employee.employee', 'admin', 2),
('employee.employee', 'delete', 1),
('employee.employee', 'edit', 1),
('employee.employee', 'stats', 1),
('employee.employee', 'stats', 2),
('employee.employee', 'view_all', 1),
('employee.employee', 'view_all', 2),
('employee.functionlevel', 'add', 1),
('employee.functionlevel', 'add', 2),
('employee.functionlevel', 'admin', 1),
('employee.functionlevel', 'admin', 2),
('employee.functionlevel', 'delete', 1),
('employee.functionlevel', 'delete', 2),
('employee.functionlevel', 'edit', 1),
('employee.functionlevel', 'edit', 2),
('employee.profile', 'add', 1),
('employee.profile', 'admin', 1),
('employee.profile', 'admin', 2),
('employee.profile', 'delete', 1),
('employee.profile', 'edit', 1),
('employee.profile', 'grantall', 1),
('employee.profile', 'grantall', 2),
('employee.usercontracts', 'add', 1),
('employee.usercontracts', 'add', 2),
('employee.usercontracts', 'admin', 1),
('employee.usercontracts', 'admin', 2),
('employee.usercontracts', 'delete', 1),
('employee.usercontracts', 'delete', 2),
('employee.usercontracts', 'edit', 1),
('employee.usercontracts', 'edit', 2),
('employee.userprefs', 'edit', 1),
('employee.userprefs', 'edit', 2),
('notes.project_notes', 'add', 1),
('notes.project_notes', 'add', 2),
('notes.project_notes', 'admin', 1),
('notes.project_notes', 'admin', 2),
('notes.project_notes', 'delete', 1),
('notes.project_notes', 'delete', 2),
('notes.project_notes', 'edit', 1),
('notes.project_notes', 'edit', 2),
('organization.contact', 'add', 1),
('organization.contact', 'add', 2),
('organization.contact', 'admin', 1),
('organization.contact', 'admin', 2),
('organization.contact', 'delete', 1),
('organization.contact', 'delete', 2),
('organization.contact', 'edit', 1),
('organization.contact', 'edit', 2),
('organization.contracts', 'add', 1),
('organization.contracts', 'add', 2),
('organization.contracts', 'admin', 1),
('organization.contracts', 'admin', 2),
('organization.contracts', 'delete', 1),
('organization.contracts', 'delete', 2),
('organization.contracts', 'edit', 1),
('organization.contracts', 'edit', 2),
('organization.contracttype', 'add', 1),
('organization.contracttype', 'add', 2),
('organization.contracttype', 'admin', 1),
('organization.contracttype', 'admin', 2),
('organization.contracttype', 'delete', 1),
('organization.contracttype', 'delete', 2),
('organization.contracttype', 'edit', 1),
('organization.contracttype', 'edit', 2),
('organization.organization', 'add', 1),
('organization.organization', 'add', 2),
('organization.organization', 'admin', 1),
('organization.organization', 'admin', 2),
('organization.organization', 'delete', 1),
('organization.organization', 'delete', 2),
('organization.organization', 'document', 1),
('organization.organization', 'document', 2),
('organization.organization', 'edit', 1),
('organization.organization', 'edit', 2),
('project.activity', 'add', 1),
('project.activity', 'add', 2),
('project.activity', 'admin', 1),
('project.activity', 'admin', 2),
('project.activity', 'delete', 1),
('project.activity', 'delete', 2),
('project.activity', 'edit', 1),
('project.activity', 'edit', 2),
('project.activity', 'stats', 1),
('project.activity', 'stats', 2),
('project.deliverable', 'add', 1),
('project.deliverable', 'add', 2),
('project.deliverable', 'delete', 1),
('project.deliverable', 'delete', 2),
('project.deliverable', 'edit', 1),
('project.deliverable', 'edit', 2),
('project.mastergantt_colorconfig', 'admin', 1),
('project.mastergantt_colorconfig', 'admin', 2),
('project.mastergantt_colorconfig', 'edit', 1),
('project.mastergantt_colorconfig', 'edit', 2),
('project.phase', 'add', 1),
('project.phase', 'add', 2),
('project.phase', 'delete', 1),
('project.phase', 'delete', 2),
('project.phase', 'edit', 1),
('project.phase', 'edit', 2),
('project.project', 'add', 1),
('project.project', 'admin', 1),
('project.project', 'admin', 2),
('project.project', 'any_project', 1),
('project.project', 'any_project', 2),
('project.project', 'changeabbreviation', 1),
('project.project', 'changeabbreviation', 2),
('project.project', 'delete', 1),
('project.project', 'edit', 1),
('project.project', 'initialplanning', 1),
('project.project', 'initialplanning', 2),
('project.project', 'planning', 1),
('project.project', 'planning', 2),
('project.project', 'stats', 1),
('project.project', 'stats', 2),
('project.project', 'tab_finance', 1),
('project.project', 'tab_finance', 2),
('project.project', 'tab_planning', 1),
('project.project', 'tab_planning', 2),
('project.role', 'add', 1),
('project.role', 'add', 2),
('project.role', 'admin', 1),
('project.role', 'admin', 2),
('project.role', 'delete', 1),
('project.role', 'delete', 2),
('project.role', 'edit', 1),
('project.role', 'edit', 2),
('project.tpl_phase', 'add', 1),
('project.tpl_phase', 'add', 2),
('project.tpl_phase', 'admin', 1),
('project.tpl_phase', 'admin', 2),
('project.tpl_phase', 'delete', 1),
('project.tpl_phase', 'delete', 2),
('project.tpl_phase', 'edit', 1),
('project.tpl_phase', 'edit', 2),
('project.tpl_project', 'add', 1),
('project.tpl_project', 'add', 2),
('project.tpl_project', 'admin', 1),
('project.tpl_project', 'admin', 2),
('project.tpl_project', 'delete', 1),
('project.tpl_project', 'delete', 2),
('project.tpl_project', 'edit', 1),
('project.tpl_project', 'edit', 2),
('quotation.payment', 'add', 1),
('quotation.payment', 'add', 2),
('quotation.payment', 'admin', 1),
('quotation.payment', 'admin', 2),
('quotation.payment', 'delete', 1),
('quotation.payment', 'delete', 2),
('quotation.payment', 'edit', 1),
('quotation.payment', 'edit', 2),
('quotation.quotation', 'add', 1),
('quotation.quotation', 'add', 2),
('quotation.quotation', 'admin', 1),
('quotation.quotation', 'admin', 2),
('quotation.quotation', 'delete', 1),
('quotation.quotation', 'delete', 2),
('quotation.quotation', 'edit', 1),
('quotation.quotation', 'edit', 2),
('reports.hoursurvey', 'report', 1),
('reports.hoursurvey', 'report', 2),
('reports.hoursurvey', 'save_for_all_users', 1),
('reports.hoursurvey', 'save_for_all_users', 2),
('reports.hoursurvey', 'view_all', 1),
('reports.hoursurvey', 'view_all', 2),
('reports.hoursurvey', 'view_managed', 1),
('reports.hoursurvey', 'view_managed', 2),
('reports.projectstatus', 'any_user', 1),
('reports.projectstatus', 'any_user', 2),
('reports.projectstatus', 'report', 1),
('reports.projectstatus', 'report', 2),
('reports.projectsurvey', 'report', 1),
('reports.projectsurvey', 'report', 2),
('reports.weekreport', 'report', 1),
('reports.weekreport', 'report', 2),
('reports.weekreport', 'view_all', 1),
('reports.weekreport', 'view_all', 2),
('reports.weekreport', 'view_managed', 1),
('reports.weekreport', 'view_managed', 2),
('scheduler.scheduler', 'add', 1),
('scheduler.scheduler', 'add', 2),
('scheduler.scheduler', 'admin', 1),
('scheduler.scheduler', 'admin', 2),
('scheduler.scheduler', 'all_non_private', 1),
('scheduler.scheduler', 'all_non_private', 2),
('scheduler.scheduler', 'delete', 1),
('scheduler.scheduler', 'delete', 2),
('scheduler.scheduler', 'edit', 1),
('scheduler.scheduler', 'edit', 2),
('scheduler.scheduler_category', 'add', 1),
('scheduler.scheduler_category', 'add', 2),
('scheduler.scheduler_category', 'admin', 1),
('scheduler.scheduler_category', 'admin', 2),
('scheduler.scheduler_category', 'delete', 1),
('scheduler.scheduler_category', 'delete', 2),
('scheduler.scheduler_category', 'edit', 1),
('scheduler.scheduler_category', 'edit', 2),
('scheduler.scheduler_email_template', 'admin', 1),
('scheduler.scheduler_email_template', 'admin', 2),
('scheduler.scheduler_email_template', 'edit', 1),
('scheduler.scheduler_email_template', 'edit', 2),
('scheduler.scheduler_holidays', 'add', 1),
('scheduler.scheduler_holidays', 'add', 2),
('scheduler.scheduler_holidays', 'admin', 1),
('scheduler.scheduler_holidays', 'admin', 2),
('scheduler.scheduler_holidays', 'delete', 1),
('scheduler.scheduler_holidays', 'delete', 2),
('scheduler.scheduler_holidays', 'edit', 1),
('scheduler.scheduler_holidays', 'edit', 2),
('timereg.hours', 'add', 1),
('timereg.hours', 'add', 2),
('timereg.hours', 'admin', 1),
('timereg.hours', 'admin', 2),
('timereg.hours', 'any_project', 1),
('timereg.hours', 'any_project', 2),
('timereg.hours', 'any_user', 1),
('timereg.hours', 'any_user', 2),
('timereg.hours', 'delete', 1),
('timereg.hours', 'delete', 2),
('timereg.hours', 'edit', 1),
('timereg.hours', 'edit', 2),
('timereg.hours', 'lock', 1),
('timereg.hours', 'lock', 2),
('timereg.hours', 'unlock', 1),
('timereg.hours', 'unlock', 2),
('timereg.hours_approve', 'add', 1),
('timereg.hours_approve', 'add', 2),
('timereg.hours_approve', 'admin', 1),
('timereg.hours_approve', 'admin', 2),
('timereg.hours_approve', 'any_user', 1),
('timereg.hours_approve', 'any_user', 2),
('timereg.hours_approve', 'approve', 1),
('timereg.hours_approve', 'approve', 2),
('timereg.hours_approve', 'delete', 1),
('timereg.hours_approve', 'delete', 2),
('timereg.hours_approve', 'disapprove', 1),
('timereg.hours_approve', 'disapprove', 2),
('timereg.hours_lock', 'add', 1),
('timereg.hours_lock', 'add', 2),
('timereg.hours_lock', 'admin', 1),
('timereg.hours_lock', 'admin', 2),
('timereg.hours_lock', 'delete', 1),
('timereg.hours_lock', 'delete', 2),
('timereg.overtime_balance', 'delete', 1),
('timereg.overtime_balance', 'delete', 2),
('timereg.overtime_balance', 'edit', 1),
('timereg.overtime_balance', 'edit', 2),
('timereg.workperiod', 'add', 1),
('timereg.workperiod', 'add', 2),
('timereg.workperiod', 'admin', 1),
('timereg.workperiod', 'admin', 2),
('timereg.workperiod', 'delete', 1),
('timereg.workperiod', 'delete', 2),
('timereg.workperiod', 'edit', 1),
('timereg.workperiod', 'edit', 2),
('todo.todo', 'add', 1),
('todo.todo', 'add', 2),
('todo.todo', 'admin', 1),
('todo.todo', 'admin', 2),
('todo.todo', 'delete', 1),
('todo.todo', 'delete', 2),
('todo.todo', 'edit', 1),
('todo.todo', 'edit', 2),
('todo.todo_history', 'view', 1),
('todo.todo_history', 'view', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity`
--

CREATE TABLE `activity` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `remarkrequired` int(1) DEFAULT NULL,
  `overtimecompensation` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `activity`
--

INSERT INTO `activity` (`id`, `name`, `description`, `remarkrequired`, `overtimecompensation`) VALUES
(1, 'Formulacion del problema', NULL, 1, 0),
(2, 'Objetivos, Alcances, Limitaciones', NULL, 1, 0),
(3, 'Asignacion de caso de uso', NULL, 0, 0),
(4, 'Caso de uso narrado', NULL, 1, 0),
(5, 'Dise', NULL, 1, 0),
(6, 'Elaboracion de prototipos', NULL, 1, 0),
(7, 'Documento del modelo de calidad', NULL, 0, 0),
(8, 'Introduccion', NULL, 0, 0),
(9, 'Investigacion sobre alquiler de vehiculos', NULL, 0, 0),
(10, 'Revision de documentos', NULL, 0, 0),
(11, 'Diagrama de clases corregido', NULL, 0, 0),
(12, 'Modelo de la base de datos', NULL, 1, 0),
(13, 'Codificacificacion de vistas y template', NULL, 0, 0),
(14, 'Pruebas', NULL, 0, 0),
(15, 'Reporte etapa 2', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atk_searchcriteria`
--

CREATE TABLE `atk_searchcriteria` (
  `nodetype` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `criteria` text NOT NULL,
  `handlertype` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `is_for_all` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract`
--

CREATE TABLE `contract` (
  `id` int(10) NOT NULL,
  `contractnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `contractname` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `contracttype` int(10) NOT NULL,
  `customer` int(10) NOT NULL,
  `billing_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `billing_period` varchar(17) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `period_price` decimal(15,2) DEFAULT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `term_of_notice` date DEFAULT NULL,
  `aftercalculation` int(1) DEFAULT NULL,
  `priceperhour` decimal(12,2) DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contracttype`
--

CREATE TABLE `contracttype` (
  `id` int(10) NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_campaign`
--

CREATE TABLE `crm_campaign` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  `actual_cost` decimal(12,2) DEFAULT NULL,
  `expected_revenue` decimal(12,2) DEFAULT NULL,
  `expected_cost` decimal(12,2) DEFAULT NULL,
  `objective` text,
  `description` text,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_by` int(10) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_campaign_status`
--

CREATE TABLE `crm_campaign_status` (
  `id` int(10) NOT NULL,
  `status_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_campaign_type`
--

CREATE TABLE `crm_campaign_type` (
  `id` int(10) NOT NULL,
  `type_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_eventlog`
--

CREATE TABLE `crm_eventlog` (
  `id` int(10) NOT NULL,
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stamp` datetime NOT NULL,
  `node` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `primarykey` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_former_name`
--

CREATE TABLE `crm_former_name` (
  `id` int(10) NOT NULL,
  `former_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `account` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_industry`
--

CREATE TABLE `crm_industry` (
  `id` int(10) NOT NULL,
  `industry_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_lead`
--

CREATE TABLE `crm_lead` (
  `id` int(10) NOT NULL,
  `lead` int(10) DEFAULT NULL,
  `lead_description` text,
  `campaign` int(10) DEFAULT NULL,
  `status` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status_description` text,
  `title_id` int(10) DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `initials` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cellular` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `remark` text,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_by` int(10) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_organization_relation`
--

CREATE TABLE `crm_organization_relation` (
  `relation_id` int(10) NOT NULL,
  `account` int(10) DEFAULT NULL,
  `relation_with` int(10) NOT NULL,
  `kind_of` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_organization_status`
--

CREATE TABLE `crm_organization_status` (
  `id` int(10) NOT NULL,
  `status_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_rate`
--

CREATE TABLE `crm_rate` (
  `id` int(10) NOT NULL,
  `rate_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_relation_type`
--

CREATE TABLE `crm_relation_type` (
  `id` int(10) NOT NULL,
  `type_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crm_source`
--

CREATE TABLE `crm_source` (
  `id` int(10) NOT NULL,
  `source_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_sequence`
--

CREATE TABLE `db_sequence` (
  `seq_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nextid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `db_sequence`
--

INSERT INTO `db_sequence` (`seq_name`, `nextid`) VALUES
('activity', 15),
('crm_eventlog', 73),
('deliverable', 2),
('hoursbase', 2),
('overtime_balance', 4),
('person', 4),
('phase', 2),
('profile', 2),
('project', 1),
('role', 3),
('title', 1),
('todo', 23),
('todo_history', 16),
('userpimitems', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deliverable`
--

CREATE TABLE `deliverable` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `project_id` int(10) NOT NULL,
  `duedate` date NOT NULL,
  `status` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remind_days` int(10) DEFAULT NULL,
  `userid` int(10) NOT NULL,
  `entrydate` date NOT NULL,
  `emailstatus` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `deliverable`
--

INSERT INTO `deliverable` (`id`, `name`, `project_id`, `duedate`, `status`, `remind_days`, `userid`, `entrydate`, `emailstatus`) VALUES
(1, 'Etapa 2', 1, '2019-06-20', 'new', 7, 1, '2019-06-18', NULL),
(2, 'Etapa 1', 1, '2019-05-16', 'complete', 7, 1, '2019-06-18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependency`
--

CREATE TABLE `dependency` (
  `phaseid_row` int(10) NOT NULL,
  `phaseid_col` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dependency`
--

INSERT INTO `dependency` (`phaseid_row`, `phaseid_col`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docmanager_document`
--

CREATE TABLE `docmanager_document` (
  `id` int(10) NOT NULL,
  `documentcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `owner` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `master` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `master_id` int(10) DEFAULT NULL,
  `entrydate` date DEFAULT NULL,
  `version` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `confidential` int(1) DEFAULT NULL,
  `internal` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docmanager_documenttype`
--

CREATE TABLE `docmanager_documenttype` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `master` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docmanager_prjtpl_dt`
--

CREATE TABLE `docmanager_prjtpl_dt` (
  `projecttpl_id` int(10) NOT NULL,
  `documenttype_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_template`
--

CREATE TABLE `email_template` (
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `plain_body` text,
  `html_body` text,
  `lastupdatedon` datetime DEFAULT NULL,
  `lastupdatedby` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_template`
--

INSERT INTO `email_template` (`code`, `module`, `title`, `subject`, `plain_body`, `html_body`, `lastupdatedon`, `lastupdatedby`) VALUES
('add_event', 'scheduler', 'Notification messages for added events', 'Scheduler Event - {$action}: {$startdate} {$title}', 'You have a meeting scheduled for {$startdate}', 'You have a meeting scheduled for {$startdate}', '2019-05-30 16:51:06', 0),
('cancel_event', 'scheduler', 'Notification messages for canceled events', 'Scheduler Event - {$action}: {$startdate} {$title}', 'Your {$title} event in {$location} has been canceled', 'Your {$title} event in {$location} has been canceled', '2019-05-30 16:51:06', 0),
('disinvited_user', 'scheduler', 'Notification messages for disinvited participants', 'Scheduler Event - {$action}: {$startdate} {$title}', 'You have been disinvited from the meeting at {$startdate}', 'You have been disinvited from the meeting at {$startdate}', '2019-05-30 16:51:06', 0),
('event_alarm', 'scheduler', 'Notification messages for your alarms', 'Alarm for {$title} at {$startdate} in {$location}', 'Here is your requested alarm.', 'Here is your requested alarm.', '2019-05-30 16:51:06', 0),
('updated_event', 'scheduler', 'Notification messages for modified events', 'Scheduler Event - {$action}: {$startdate} {$title}', 'Your meeting that had been scheduled for {$olddate} has been rescheduled to {$startdate}', 'Your meeting that had been scheduled for {$olddate} has been rescheduled to {$startdate}', '2019-05-30 16:51:06', 0),
('user_notification', 'scheduler', 'Notification messages for your responses', 'Scheduler Event - {$action}: {$startdate} {$title}', 'On {$date} {$fullname} {$action} your meeting request for {$startdate}', 'On {$date} {$fullname} {$action} your meeting request for {$startdate}', '2019-05-30 16:51:06', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employeerole`
--

CREATE TABLE `employeerole` (
  `employee_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employeerole`
--

INSERT INTO `employeerole` (`employee_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_department`
--

CREATE TABLE `employee_department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `functionlevel`
--

CREATE TABLE `functionlevel` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `hours`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `hours` (
`id` int(10)
,`virtual_time` int(1)
,`activitydate` date
,`todate` date
,`userid` int(10)
,`phaseid` int(10)
,`activityid` int(10)
,`remark` text
,`time` int(10)
,`workperiod` int(10)
,`entrydate` date
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoursbase`
--

CREATE TABLE `hoursbase` (
  `id` int(10) NOT NULL,
  `virtual_time` int(1) DEFAULT NULL,
  `activitydate` date NOT NULL,
  `todate` date DEFAULT NULL,
  `userid` int(10) NOT NULL,
  `phaseid` int(10) NOT NULL,
  `activityid` int(10) NOT NULL,
  `remark` text,
  `time` int(10) NOT NULL,
  `workperiod` int(10) DEFAULT NULL,
  `entrydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hours_lock`
--

CREATE TABLE `hours_lock` (
  `id` int(10) NOT NULL,
  `period` int(6) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `approved` int(1) DEFAULT NULL,
  `coordinator` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mastergantt_colorconfig`
--

CREATE TABLE `mastergantt_colorconfig` (
  `id` int(10) NOT NULL,
  `hours_min` int(10) DEFAULT NULL,
  `hours_max` int(10) DEFAULT NULL,
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organization`
--

CREATE TABLE `organization` (
  `id` int(10) NOT NULL,
  `organizationcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `visit_country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mail_country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_address2` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `invoice_country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bankaccount` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bankaccount2` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bankaccount3` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bankaccount4` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `vatnumber` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `debtornumber` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `member_of` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `source` int(10) DEFAULT NULL,
  `industry` int(10) DEFAULT NULL,
  `employees` int(5) DEFAULT NULL,
  `revenue` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rate` int(10) DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `remark` text,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_by` int(10) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `overtime_balance`
--

CREATE TABLE `overtime_balance` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `day` date NOT NULL,
  `balance` decimal(12,2) NOT NULL,
  `manual` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `overtime_balance`
--

INSERT INTO `overtime_balance` (`id`, `userid`, `day`, `balance`, `manual`, `remark`) VALUES
(1, 2, '2019-05-26', '0.00', '0', NULL),
(3, 1, '2019-05-26', '0.00', '0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(10) NOT NULL,
  `title_id` int(10) DEFAULT NULL,
  `userid` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `initials` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cellular` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `function` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `remark` text,
  `role` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `bankaccount` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `socialsecuritynumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `employer_id` int(10) DEFAULT NULL,
  `department` int(10) DEFAULT NULL,
  `supervisor` int(10) DEFAULT NULL,
  `functionlevel` int(10) DEFAULT NULL,
  `status` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lng` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `theme` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `company` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `title_id`, `userid`, `lastname`, `firstname`, `initials`, `address`, `zipcode`, `city`, `state`, `country`, `phone`, `cellular`, `fax`, `email`, `function`, `remark`, `role`, `created_by`, `created_on`, `last_modified_by`, `last_modified_on`, `birthdate`, `bankaccount`, `socialsecuritynumber`, `employer_id`, `department`, `supervisor`, `functionlevel`, `status`, `lng`, `password`, `theme`, `company`) VALUES
(1, 1, 'TA17002', 'Tennant Alvarenga', 'Daniel Enrique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'danielenrique9919@hotmail.com', NULL, '', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 'es', 'd662a07c79ee9a49043ff88f92b48821', NULL, NULL),
(2, NULL, 'PP16011', 'Peralta Pinto', 'Gerardo Wilfredo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active', 'es', 'f619d21981efe0e64a0f7cedbfa5880c', NULL, NULL),
(3, NULL, 'SM16021', 'Santana Mendez', 'Francisco Alexander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active', 'es', '6a10e15d719bfc9cf5867571fc50f080', NULL, NULL),
(4, NULL, 'RR16033', 'Ruiz Rodriguez', 'Stefany Lisseth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active', 'es', 'c264515789a56574d495acb4d5c2a267', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phase`
--

CREATE TABLE `phase` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `projectid` int(10) NOT NULL,
  `description` text,
  `status` varchar(9) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `virtual_time` int(1) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `dependsondeliverable` int(10) DEFAULT NULL,
  `initial_planning` int(10) DEFAULT NULL,
  `current_planning` int(10) DEFAULT NULL,
  `spend_hours` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phase`
--

INSERT INTO `phase` (`id`, `name`, `projectid`, `description`, `status`, `virtual_time`, `startdate`, `enddate`, `dependsondeliverable`, `initial_planning`, `current_planning`, `spend_hours`) VALUES
(1, 'Etapa 1', 1, 'Esta etapa consiste en establecer los requisitos del software a desarrollar, formular los alcances, objetivos, limitaciones, realizar una investigaci', 'nonactive', 0, '2019-03-25', '2019-05-16', NULL, NULL, NULL, NULL),
(2, 'Etapa 2', 1, 'Esta etapa consiste en corregir el diagrama de clases, crear el modelo de la base de datos, la codificaci', 'active', 0, '2019-06-10', '2019-06-20', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phase_activity`
--

CREATE TABLE `phase_activity` (
  `phaseid` int(10) NOT NULL,
  `activityid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phase_activity`
--

INSERT INTO `phase_activity` (`phaseid`, `activityid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile`
--

CREATE TABLE `profile` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profile`
--

INSERT INTO `profile` (`id`, `name`) VALUES
(1, 'Administrador'),
(2, 'Programador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `project_category` int(10) DEFAULT NULL,
  `coordinator` int(10) DEFAULT NULL,
  `master_project` int(10) DEFAULT NULL,
  `contract_id` int(10) DEFAULT NULL,
  `description` text,
  `quotation_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fixed_price` decimal(15,2) DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `customer` int(10) DEFAULT NULL,
  `timereg_limit` int(1) DEFAULT NULL,
  `alwaysvisibleintimereg` int(1) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `template` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `abbreviation`, `name`, `project_category`, `coordinator`, `master_project`, `contract_id`, `description`, `quotation_number`, `fixed_price`, `status`, `customer`, `timereg_limit`, `alwaysvisibleintimereg`, `startdate`, `enddate`, `template`) VALUES
(1, 'SAV', 'Sistema de alquiler de vehiculos', NULL, 1, NULL, NULL, '', NULL, NULL, 'active', NULL, 1, 0, '2019-03-25', '2019-06-20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_category`
--

CREATE TABLE `project_category` (
  `id` int(10) NOT NULL,
  `project_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_notes`
--

CREATE TABLE `project_notes` (
  `id` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `projectid` int(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `entrydate` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_person`
--

CREATE TABLE `project_person` (
  `projectid` int(10) NOT NULL,
  `personid` int(10) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project_person`
--

INSERT INTO `project_person` (`projectid`, `personid`, `role`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 1),
(1, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_phaseplanning`
--

CREATE TABLE `project_phaseplanning` (
  `phaseid` int(10) NOT NULL,
  `personid` int(10) NOT NULL,
  `initial_planning` int(10) DEFAULT NULL,
  `current_planning` int(10) DEFAULT NULL,
  `spend_hours` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project_phaseplanning`
--

INSERT INTO `project_phaseplanning` (`phaseid`, `personid`, `initial_planning`, `current_planning`, `spend_hours`) VALUES
(2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotation_payment`
--

CREATE TABLE `quotation_payment` (
  `id` int(10) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotation_quotation`
--

CREATE TABLE `quotation_quotation` (
  `id` int(10) NOT NULL,
  `quotation_nr` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `organization_id` int(10) NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `method` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text,
  `issue_date` date NOT NULL,
  `expire_date` date DEFAULT NULL,
  `status` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `assigned_to` int(10) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `payment_id` int(10) DEFAULT NULL,
  `success_chance` int(3) DEFAULT NULL,
  `profit_expectance` decimal(12,2) DEFAULT NULL,
  `campaign` int(10) DEFAULT NULL,
  `source` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `last_modified_by` int(10) DEFAULT NULL,
  `last_modified_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'Programador', 'Realiza actividades de programaci'),
(2, 'Coordinador', 'Realiza actividades de coordinaci'),
(3, 'Administrador de base de datos', 'Gestiona la base de datos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_alarms`
--

CREATE TABLE `scheduler_alarms` (
  `scheduler_id` int(10) NOT NULL,
  `startdate` int(10) NOT NULL,
  `duration` int(10) DEFAULT NULL,
  `senddate` int(10) DEFAULT NULL,
  `send` int(1) DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `userid` int(2) NOT NULL,
  `owner` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_attendees`
--

CREATE TABLE `scheduler_attendees` (
  `scheduler_id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_category`
--

CREATE TABLE `scheduler_category` (
  `id` int(10) NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bgcolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fgcolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_cyclus`
--

CREATE TABLE `scheduler_cyclus` (
  `scheduler_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `monthly_day` int(2) DEFAULT NULL,
  `yearly_day` int(2) DEFAULT NULL,
  `yearly_month` int(2) DEFAULT NULL,
  `yearly_month2` int(2) DEFAULT NULL,
  `daily_every` int(10) DEFAULT NULL,
  `weekly_every` int(10) DEFAULT NULL,
  `monthly_every` int(10) DEFAULT NULL,
  `monthly_every2` int(10) DEFAULT NULL,
  `monthly_month_time` int(2) DEFAULT NULL,
  `yearly_month_time` int(2) DEFAULT NULL,
  `weekly_weekday` int(17) DEFAULT NULL,
  `monthly_weekday_list` int(1) DEFAULT NULL,
  `yearly_weekday_list` int(1) DEFAULT NULL,
  `daily_choice` int(10) DEFAULT NULL,
  `monthly_choice` int(10) DEFAULT NULL,
  `yearly_choice` int(10) DEFAULT NULL,
  `end_choice` int(10) DEFAULT NULL,
  `cyclus_enddate` date DEFAULT NULL,
  `cyclus_times` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_cyclus_not`
--

CREATE TABLE `scheduler_cyclus_not` (
  `scheduler_id` int(10) NOT NULL,
  `date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_dates`
--

CREATE TABLE `scheduler_dates` (
  `scheduler_id` int(10) NOT NULL,
  `startdate` int(10) NOT NULL,
  `enddate` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_group`
--

CREATE TABLE `scheduler_group` (
  `id` int(10) NOT NULL,
  `userid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_group_member`
--

CREATE TABLE `scheduler_group_member` (
  `groupid` int(10) NOT NULL,
  `userid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_holidays`
--

CREATE TABLE `scheduler_holidays` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `special` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `day_offset` int(3) DEFAULT NULL,
  `length` int(2) DEFAULT NULL,
  `weekday` int(1) DEFAULT NULL,
  `moveto` int(1) DEFAULT NULL,
  `schedulecategory` int(10) NOT NULL,
  `country` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_notes`
--

CREATE TABLE `scheduler_notes` (
  `id` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `scheduler_id` int(10) NOT NULL,
  `entrydate` date NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_scheduler`
--

CREATE TABLE `scheduler_scheduler` (
  `id` int(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` text,
  `recur` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `allday` int(1) DEFAULT NULL,
  `starttime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `category` int(10) NOT NULL,
  `all_users` int(1) DEFAULT NULL,
  `priority` int(1) DEFAULT NULL,
  `private` int(1) DEFAULT NULL,
  `nonblocking` int(1) DEFAULT NULL,
  `owner` int(10) NOT NULL,
  `owner_attendee` int(1) DEFAULT NULL,
  `lastdate` int(10) DEFAULT NULL,
  `times` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_userassistants`
--

CREATE TABLE `scheduler_userassistants` (
  `userid` int(10) NOT NULL,
  `employeeid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scheduler_userpreferences`
--

CREATE TABLE `scheduler_userpreferences` (
  `userid` int(10) NOT NULL,
  `timeschedule` int(2) NOT NULL,
  `showweeknumbers` int(1) DEFAULT NULL,
  `showtodo` int(1) DEFAULT NULL,
  `showemployeebirthdays` int(1) DEFAULT NULL,
  `showlunarphases` int(1) DEFAULT NULL,
  `autorefresh` int(1) DEFAULT NULL,
  `refresh_interval` int(10) DEFAULT NULL,
  `default_view` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `default_userview` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `default_eventtime` time DEFAULT NULL,
  `default_category` int(10) DEFAULT NULL,
  `scheduler_emptycolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `scheduler_emptyworkhourscolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `scheduler_userpreferences`
--

INSERT INTO `scheduler_userpreferences` (`userid`, `timeschedule`, `showweeknumbers`, `showtodo`, `showemployeebirthdays`, `showlunarphases`, `autorefresh`, `refresh_interval`, `default_view`, `default_userview`, `default_eventtime`, `default_category`, `scheduler_emptycolor`, `scheduler_emptyworkhourscolor`) VALUES
(1, 30, 0, 0, 0, NULL, 0, 0, 'day', '1', '01:00:00', NULL, '#DDDDDD', '#FFFFFF'),
(2, 30, 0, 0, 0, NULL, 0, 0, 'day', '2', '01:00:00', NULL, '#DDDDDD', '#FFFFFF'),
(3, 30, 0, 0, 0, NULL, 0, 0, 'day', '3', '01:00:00', NULL, '#DDDDDD', '#FFFFFF'),
(4, 30, 0, 0, 0, NULL, 0, 0, 'day', '4', '01:00:00', NULL, '#DDDDDD', '#FFFFFF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `title`
--

CREATE TABLE `title` (
  `id` int(10) NOT NULL,
  `title` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `title`
--

INSERT INTO `title` (`id`, `title`) VALUES
(1, 'Coordinador Proyecto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `todo`
--

CREATE TABLE `todo` (
  `id` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `projectid` int(10) DEFAULT NULL,
  `contactid` int(10) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `entrydate` date NOT NULL,
  `duedate` date NOT NULL,
  `closedate` date DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `priority` int(1) NOT NULL,
  `completed` int(3) DEFAULT NULL,
  `private` int(1) DEFAULT NULL,
  `description` text,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `todo`
--

INSERT INTO `todo` (`id`, `owner`, `projectid`, `contactid`, `title`, `assigned_to`, `entrydate`, `duedate`, `closedate`, `updated`, `priority`, `completed`, `private`, `description`, `status`) VALUES
(2, 1, 1, NULL, 'Formulacion del problema', 2, '2019-05-30', '2019-03-25', '2019-04-09', '2019-05-30 17:31:29', 1, 100, 0, '', 5),
(3, 1, 1, NULL, 'Objetivos', 3, '2019-05-30', '2019-03-30', '2019-05-30', '2019-05-30 17:32:52', 3, 100, 0, '', 5),
(4, 1, 1, NULL, 'Alcances', 3, '2019-05-30', '2019-04-01', '2019-06-01', '2019-05-30 17:33:54', 3, 100, 0, '', 5),
(5, 1, 1, NULL, 'Limitaciones', 3, '2019-05-30', '2019-04-02', '2019-04-02', '2019-05-30 17:34:42', 3, 100, 0, '', 5),
(6, 1, 1, NULL, 'Asignacion de caso de uso', 2, '2019-05-30', '2019-04-23', '2019-04-23', '2019-06-18 01:12:06', 1, 100, 0, '', 5),
(7, 1, 1, NULL, 'Casos de uso narrados', 1, '2019-05-30', '2019-04-24', '2019-04-26', '2019-05-30 17:38:24', 1, 100, 0, '', 5),
(8, 1, 1, NULL, 'Modelo conceptual de clase', 4, '2019-05-30', '2019-04-30', '2019-04-30', '2019-06-18 01:13:12', 2, 100, 0, '', 5),
(9, 1, 1, NULL, 'Elaboracion de prototipos', 3, '2019-05-30', '2019-04-27', '2019-04-30', '2019-06-18 01:13:36', 1, 100, 0, '', 5),
(10, 1, 1, NULL, 'Documento del modelo de calidad', 3, '2019-05-30', '2019-05-03', '2019-05-07', '2019-05-30 17:40:13', 2, 100, 0, '', 5),
(11, 1, 1, NULL, 'Documento de estandares', 1, '2019-05-30', '2019-05-06', '2019-05-09', '2019-06-18 01:13:52', 2, 100, 0, '', 5),
(12, 1, 1, NULL, 'Documento de requisitos', 2, '2019-05-30', '2019-05-08', '2019-05-13', '2019-05-30 18:18:46', 2, 100, 0, '', 5),
(13, 1, 1, NULL, 'Introduccion', 3, '2019-05-30', '2019-05-15', '2019-05-15', '2019-06-18 01:14:13', 3, 100, 0, '', 5),
(14, 1, 1, NULL, 'Investigacion de alquiler', 4, '2019-05-30', '2019-04-23', '2019-05-15', '2019-06-18 01:12:25', 3, 100, 0, '', 5),
(15, 1, 1, NULL, 'Revision de documentos elaborados', 1, '2019-05-30', '2019-05-16', '2019-05-16', '2019-06-18 01:14:36', 2, 100, 0, '', 5),
(16, 1, 1, NULL, 'Instalaci', 1, '2019-05-30', '2019-05-23', '2019-05-27', '2019-05-30 18:55:09', 3, 100, 0, '', 5),
(17, 1, 1, NULL, 'Diagrama de clases corregido', 2, '2019-05-30', '2019-05-28', '2019-06-14', '2019-06-18 00:23:50', 3, 100, 0, '', 5),
(18, 1, 1, NULL, 'Modelo logico', 1, '2019-05-30', '2019-05-29', '2019-05-29', '2019-06-18 01:14:51', 2, 100, 0, '', 5),
(19, 1, 1, NULL, 'Modelo fisico ', 4, '2019-05-30', '2019-05-29', '2019-05-29', '2019-06-18 01:11:49', 3, 100, 0, '', 5),
(20, 1, 1, NULL, 'Codificacion de vistas y template', 1, '2019-05-30', '2019-05-30', '2019-06-05', '2019-06-18 01:11:23', 1, 70, 0, '', 3),
(21, 1, 1, NULL, 'Pruebas', 3, '2019-05-30', '2019-06-06', '2019-06-06', '2019-05-30 18:59:19', 1, 0, 0, '', 3),
(22, 1, 1, NULL, 'Reporte segunda etapa', 2, '2019-05-30', '2019-06-06', '2019-06-06', '2019-05-30 19:20:21', 2, 0, 0, '', 3),
(23, 1, 1, NULL, 'Costo del proyecto', 1, '2019-05-30', '2019-06-06', '2019-05-06', '2019-05-30 19:19:59', 1, 0, 0, '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `todo_history`
--

CREATE TABLE `todo_history` (
  `id` int(10) NOT NULL,
  `owner` int(10) NOT NULL,
  `projectid` int(10) DEFAULT NULL,
  `contactid` int(10) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `entrydate` date NOT NULL,
  `duedate` date NOT NULL,
  `closedate` date DEFAULT NULL,
  `priority` int(1) NOT NULL,
  `completed` int(3) DEFAULT NULL,
  `private` int(1) DEFAULT NULL,
  `description` text,
  `status` int(1) NOT NULL,
  `todoid` int(10) NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `todo_history`
--

INSERT INTO `todo_history` (`id`, `owner`, `projectid`, `contactid`, `title`, `assigned_to`, `entrydate`, `duedate`, `closedate`, `priority`, `completed`, `private`, `description`, `status`, `todoid`, `updated`) VALUES
(1, 1, 1, NULL, 'Casos de uso narrados', 1, '2019-05-30', '2019-04-24', '2019-04-26', 3, 100, 0, '', 5, 7, '2019-05-30 17:38:25'),
(2, 1, 1, NULL, 'Reporte segunda etapa', 3, '2019-05-30', '2019-06-06', '2019-06-06', 2, 0, 0, '', 3, 22, '2019-05-30 19:20:22'),
(3, 1, 1, NULL, 'Modelo l', 1, '2019-05-30', '2019-05-29', '2019-05-29', 2, 0, 0, '', 3, 18, '2019-06-04 07:09:52'),
(4, 1, 1, NULL, 'Diagrama de clases corregido', 2, '2019-05-30', '2019-05-28', '2019-05-28', 3, 0, 0, '', 4, 17, '2019-06-18 00:21:36'),
(5, 1, 1, NULL, 'Diagrama de clases corregido', 2, '2019-05-30', '2019-05-28', '2019-05-28', 3, 0, 0, '', 5, 17, '2019-06-18 00:23:50'),
(6, 1, 1, NULL, 'Codificaci', 1, '2019-05-30', '2019-05-30', '2019-06-05', 1, 0, 0, '', 3, 20, '2019-06-18 01:11:23'),
(7, 1, 1, NULL, 'Modelo f', 4, '2019-05-30', '2019-05-29', '2019-05-29', 3, 0, 0, '', 4, 19, '2019-06-18 01:11:49'),
(8, 1, 1, NULL, 'Asignaci', 2, '2019-05-30', '2019-04-23', '2019-04-23', 1, 100, 0, '', 5, 6, '2019-06-18 01:12:06'),
(9, 1, 1, NULL, 'Investigaci', 4, '2019-05-30', '2019-04-23', '2019-05-15', 3, 100, 0, '', 5, 14, '2019-06-18 01:12:25'),
(10, 1, 1, NULL, 'Dise', 4, '2019-05-30', '2019-04-30', '2019-04-30', 2, 100, 0, '', 5, 8, '2019-06-18 01:12:47'),
(11, 1, 1, NULL, 'Dise', 4, '2019-05-30', '2019-04-30', '2019-04-30', 2, 100, 0, '', 5, 8, '2019-06-18 01:13:12'),
(12, 1, 1, NULL, 'Elaboraci', 3, '2019-05-30', '2019-04-27', '2019-04-30', 1, 100, 0, '', 5, 9, '2019-06-18 01:13:36'),
(13, 1, 1, NULL, 'Documento de est', 1, '2019-05-30', '2019-05-06', '2019-05-09', 2, 100, 0, '', 5, 11, '2019-06-18 01:13:52'),
(14, 1, 1, NULL, 'Introducci', 3, '2019-05-30', '2019-05-15', '2019-05-15', 3, 100, 0, '', 5, 13, '2019-06-18 01:14:13'),
(15, 1, 1, NULL, 'Revisi', 1, '2019-05-30', '2019-05-16', '2019-05-16', 2, 100, 0, '', 5, 15, '2019-06-18 01:14:36'),
(16, 1, 1, NULL, 'Modelo l', 1, '2019-05-30', '2019-05-29', '2019-05-29', 2, 100, 0, '', 5, 18, '2019-06-18 01:14:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpl_dependency`
--

CREATE TABLE `tpl_dependency` (
  `phaseid_row` int(10) NOT NULL,
  `phaseid_col` int(10) NOT NULL,
  `projectid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpl_phase`
--

CREATE TABLE `tpl_phase` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpl_phase_activity`
--

CREATE TABLE `tpl_phase_activity` (
  `activityid` int(10) NOT NULL,
  `phaseid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpl_project`
--

CREATE TABLE `tpl_project` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpl_project_phase`
--

CREATE TABLE `tpl_project_phase` (
  `projectid` int(10) NOT NULL,
  `phaseid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usercontract`
--

CREATE TABLE `usercontract` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `uc_hours` decimal(6,2) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `description` text,
  `workingdays` text,
  `workstarttime` time NOT NULL,
  `workendtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userpimitems`
--

CREATE TABLE `userpimitems` (
  `id` int(10) NOT NULL,
  `userid` int(10) DEFAULT NULL,
  `pimitem` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `orderby` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `userpimitems`
--

INSERT INTO `userpimitems` (`id`, `userid`, `pimitem`, `orderby`) VALUES
(1, 1, 'timereg_timeregistration', 10),
(2, 1, 'scheduler_schedule', 20),
(3, 1, 'todo_todos', 30),
(4, 2, 'timereg_timeregistration', 10),
(5, 2, 'scheduler_schedule', 20),
(6, 2, 'todo_todos', 30),
(7, 3, 'timereg_timeregistration', 10),
(8, 3, 'scheduler_schedule', 20),
(9, 3, 'todo_todos', 30),
(10, 4, 'timereg_timeregistration', 10),
(11, 4, 'scheduler_schedule', 20),
(12, 4, 'todo_todos', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versioninfo`
--

CREATE TABLE `versioninfo` (
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `versioninfo`
--

INSERT INTO `versioninfo` (`module`, `version`) VALUES
('docmanager', '5'),
('employee', '25'),
('notes', '1'),
('organization', '23'),
('person', '7'),
('pim', '3'),
('project', '25'),
('quotation', '6'),
('reports', '2'),
('scheduler', '12'),
('search', '1'),
('setup', '2'),
('timereg', '16'),
('todo', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workperiod`
--

CREATE TABLE `workperiod` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `percentage` int(10) NOT NULL,
  `defaultrate` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura para la vista `hours`
--
DROP TABLE IF EXISTS `hours`;

CREATE ALGORITHM=UNDEFINED DEFINER=`achievo`@`localhost` SQL SECURITY DEFINER VIEW `hours`  AS  select `hoursbase`.`id` AS `id`,`hoursbase`.`virtual_time` AS `virtual_time`,`hoursbase`.`activitydate` AS `activitydate`,`hoursbase`.`todate` AS `todate`,`hoursbase`.`userid` AS `userid`,`hoursbase`.`phaseid` AS `phaseid`,`hoursbase`.`activityid` AS `activityid`,`hoursbase`.`remark` AS `remark`,`hoursbase`.`time` AS `time`,`hoursbase`.`workperiod` AS `workperiod`,`hoursbase`.`entrydate` AS `entrydate` from `hoursbase` where ((`hoursbase`.`virtual_time` = 0) or isnull(`hoursbase`.`virtual_time`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accessright`
--
ALTER TABLE `accessright`
  ADD PRIMARY KEY (`node`,`action`,`role_id`);

--
-- Indices de la tabla `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `atk_searchcriteria`
--
ALTER TABLE `atk_searchcriteria`
  ADD PRIMARY KEY (`nodetype`,`name`);

--
-- Indices de la tabla `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contracttype`
--
ALTER TABLE `contracttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_campaign`
--
ALTER TABLE `crm_campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_campaign_status`
--
ALTER TABLE `crm_campaign_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_campaign_type`
--
ALTER TABLE `crm_campaign_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_eventlog`
--
ALTER TABLE `crm_eventlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_former_name`
--
ALTER TABLE `crm_former_name`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_industry`
--
ALTER TABLE `crm_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_lead`
--
ALTER TABLE `crm_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_organization_relation`
--
ALTER TABLE `crm_organization_relation`
  ADD PRIMARY KEY (`relation_id`);

--
-- Indices de la tabla `crm_organization_status`
--
ALTER TABLE `crm_organization_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_rate`
--
ALTER TABLE `crm_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_relation_type`
--
ALTER TABLE `crm_relation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `crm_source`
--
ALTER TABLE `crm_source`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_sequence`
--
ALTER TABLE `db_sequence`
  ADD PRIMARY KEY (`seq_name`);

--
-- Indices de la tabla `deliverable`
--
ALTER TABLE `deliverable`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dependency`
--
ALTER TABLE `dependency`
  ADD PRIMARY KEY (`phaseid_row`,`phaseid_col`);

--
-- Indices de la tabla `docmanager_document`
--
ALTER TABLE `docmanager_document`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docmanager_documenttype`
--
ALTER TABLE `docmanager_documenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docmanager_prjtpl_dt`
--
ALTER TABLE `docmanager_prjtpl_dt`
  ADD PRIMARY KEY (`projecttpl_id`,`documenttype_id`);

--
-- Indices de la tabla `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`code`);

--
-- Indices de la tabla `employeerole`
--
ALTER TABLE `employeerole`
  ADD PRIMARY KEY (`employee_id`,`role_id`);

--
-- Indices de la tabla `employee_department`
--
ALTER TABLE `employee_department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `functionlevel`
--
ALTER TABLE `functionlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hoursbase`
--
ALTER TABLE `hoursbase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activitydate_idx` (`activitydate`),
  ADD KEY `userid_idx` (`userid`);

--
-- Indices de la tabla `hours_lock`
--
ALTER TABLE `hours_lock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mastergantt_colorconfig`
--
ALTER TABLE `mastergantt_colorconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `overtime_balance`
--
ALTER TABLE `overtime_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_idx` (`userid`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id_idx` (`projectid`);

--
-- Indices de la tabla `phase_activity`
--
ALTER TABLE `phase_activity`
  ADD PRIMARY KEY (`phaseid`,`activityid`);

--
-- Indices de la tabla `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idx` (`name`(25));

--
-- Indices de la tabla `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_notes`
--
ALTER TABLE `project_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_person`
--
ALTER TABLE `project_person`
  ADD PRIMARY KEY (`projectid`,`personid`,`role`);

--
-- Indices de la tabla `project_phaseplanning`
--
ALTER TABLE `project_phaseplanning`
  ADD PRIMARY KEY (`phaseid`,`personid`);

--
-- Indices de la tabla `quotation_payment`
--
ALTER TABLE `quotation_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quotation_quotation`
--
ALTER TABLE `quotation_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_alarms`
--
ALTER TABLE `scheduler_alarms`
  ADD PRIMARY KEY (`scheduler_id`,`startdate`,`userid`);

--
-- Indices de la tabla `scheduler_attendees`
--
ALTER TABLE `scheduler_attendees`
  ADD PRIMARY KEY (`scheduler_id`,`person_id`);

--
-- Indices de la tabla `scheduler_category`
--
ALTER TABLE `scheduler_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_cyclus`
--
ALTER TABLE `scheduler_cyclus`
  ADD PRIMARY KEY (`scheduler_id`);

--
-- Indices de la tabla `scheduler_cyclus_not`
--
ALTER TABLE `scheduler_cyclus_not`
  ADD PRIMARY KEY (`scheduler_id`,`date`);

--
-- Indices de la tabla `scheduler_dates`
--
ALTER TABLE `scheduler_dates`
  ADD PRIMARY KEY (`scheduler_id`,`startdate`),
  ADD KEY `enddate_idx` (`enddate`);

--
-- Indices de la tabla `scheduler_group`
--
ALTER TABLE `scheduler_group`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_group_member`
--
ALTER TABLE `scheduler_group_member`
  ADD PRIMARY KEY (`groupid`,`userid`);

--
-- Indices de la tabla `scheduler_holidays`
--
ALTER TABLE `scheduler_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_notes`
--
ALTER TABLE `scheduler_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_scheduler`
--
ALTER TABLE `scheduler_scheduler`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `scheduler_userassistants`
--
ALTER TABLE `scheduler_userassistants`
  ADD PRIMARY KEY (`userid`,`employeeid`);

--
-- Indices de la tabla `scheduler_userpreferences`
--
ALTER TABLE `scheduler_userpreferences`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_idx` (`owner`),
  ADD KEY `assigned_to_idx` (`assigned_to`),
  ADD KEY `status_idx` (`status`);

--
-- Indices de la tabla `todo_history`
--
ALTER TABLE `todo_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tpl_dependency`
--
ALTER TABLE `tpl_dependency`
  ADD PRIMARY KEY (`phaseid_row`,`phaseid_col`,`projectid`);

--
-- Indices de la tabla `tpl_phase`
--
ALTER TABLE `tpl_phase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tpl_phase_activity`
--
ALTER TABLE `tpl_phase_activity`
  ADD PRIMARY KEY (`activityid`,`phaseid`);

--
-- Indices de la tabla `tpl_project`
--
ALTER TABLE `tpl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tpl_project_phase`
--
ALTER TABLE `tpl_project_phase`
  ADD PRIMARY KEY (`projectid`,`phaseid`);

--
-- Indices de la tabla `usercontract`
--
ALTER TABLE `usercontract`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userpimitems`
--
ALTER TABLE `userpimitems`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `versioninfo`
--
ALTER TABLE `versioninfo`
  ADD PRIMARY KEY (`module`);

--
-- Indices de la tabla `workperiod`
--
ALTER TABLE `workperiod`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
