%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: andywiecko                        %
% project: multilanguage LaTeX CV template  %
% version: v1.0                             %
% site: andywiecko.github.io                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Custom package options
\DeclareOption{english}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{polish}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{russian}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{british}{
\PassOptionsToPackage{\CurrentOption}{babel}
}
\DeclareOption{french}{
\PassOptionsToPackage{\CurrentOption}{babel}
\PassOptionsToClass{a4paper}{article}
}


%% An option to make a longer/shorter CV to include extra material
\newif\iflong
\longfalse
\DeclareOption{long}{\longtrue}


%% Process given options
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{babel}

% Packages
\usepackage[utf8]{inputenc}
\usepackage{Packages/Geometry}
\usepackage{Packages/SectionStyle}
\usepackage{Packages/FieldDefinitions}
\usepackage{Packages/HyperrefSetup}
\usepackage{Packages/MakeContact}
\usepackage{Packages/Pagination}
\usepackage{Packages/TimeItem}
\usepackage{Packages/Bibliography}
\usepackage{Packages/Misc}
% Settings
\usepackage{Settings/FillContactOrder}
\usepackage{Settings/DefinedFields}
\usepackage{Settings/DefinedSections}
\usepackage{Settings/Icons}
\usepackage{Settings/WidthSettings}

\makeatletter
\def\@LANG#1{\iflanguage{#1}{\usepackage{Settings/LANG/#1}}{}}
\@LANG{polish}
\@LANG{english}
\@LANG{russian}
\@LANG{british}
\@LANG{french}
\makeatother

% languages macros
\def\PL#1{\iflanguage{polish}{#1}{}}
\def\EN#1{\iflanguage{english}{#1}{}}
\def\RUS#1{\iflanguage{russian}{#1}{}}
\def\BR#1{\iflanguage{british}{#1}{}}
\def\FR#1{\iflanguage{french}{#1}{}}
\def\ENG#1{\iflanguage{english}{#1}{\iflanguage{british}{#1}{}}}
