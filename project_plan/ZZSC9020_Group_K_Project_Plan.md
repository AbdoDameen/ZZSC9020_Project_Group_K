---
title: "Impact of Climate Change on Electricity Consumption in New South Wales"
author:
  - 'Abdelrhman Dameen (z5427841), '
  - 'Md Nezam Uddin (z5339862), '
  - 'Pam Moodley (z5366156), '
  - 'Van Hai Ho (z3071030)'
date: "05/09/2023"
output:
  pdf_document:
    template: template.tex
    md_extensions: +raw_attribute
    keep_md: yes
    keep_tex: yes
    pandoc_args: --top-level-division="chapter"
    toc: yes
    toc_depth: 3
    number_sections: yes
  word_document:
    toc: yes
    toc_depth: '3'
    number_sections: yes
    pandoc_args: --top-level-division="chapter"
team: Group K
session: Hexamester 5, 2023
Acknowledgements: null
Abstract: 'Climate Change has had significant impacts on our everyday life around the world. Energy consumption is essential in modern life, required by individual family units to large organizations and industrial scales. In this project, we investigate a strategy for integrative demand forecasting for energy consumption using a machine learning approach with seasonal decomposition and climate change impact analysis.'
coursecode: ZZSC9020
bibliography: references.bib
csl: biomed-central.csl
---



```{=tex}
\setcounter{chapter}{1}
\renewcommand\thesection{\arabic{section}}
```
## Introduction and Motivation {.label:s-intro}

The supply and demand of energy are volatile. For suppliers to enter and remain in the market, the supply of energy must be profitable. Profitability hinges on accurately predicting and providing the most efficient amount of energy to the grid.

It is a known fact that weather plays a significant role in energy demand. For instance, heating is utilized when the temperature drops, and air conditioning is used when the temperature rises. Therefore, this analysis will examine the impact of weather on energy demand to better predict the required supply. If the supply is not accurately calculated, suppliers may incur excessive costs to provide additional energy. Given the substantial role of weather in energy demand, the analysis will also consider the effects of global warming and erratic storm periods.

Other factors also influence the supply and demand of energy. This project will attempt to identify the patterns that daily and seasonal variations, as well as holidays, have on demand.

Incorporating all these factors into an analysis of energy demand will highlight the advantages of using a machine learning model to predict demand more efficiently.

Specifically, within the scope of this project, we will identify energy consumption patterns to uncover hidden temporal trends in demand, including daily and seasonal fluctuations. We will perform a climate impact assessment to quantify how changes in climate variables, like temperature, affect energy demand.

Additionally, we will conduct holiday and special event analysis to understand their impact on energy consumption, thereby aiding in better planning.

Based on this analysis, we will provide policy recommendations to offer actionable insights for energy policy formulation, including the diversification of energy sources to balance demand. We will create a machine learning model capable of predicting future energy demand with high accuracy, incorporating all the identified variables.

## Brief Literature Review

The topic of how climate change impacts residential energy use has been studied in various global contexts. The first research paper investigates the potential changes in energy consumption in Europe and Australia, predicting a variable impact ranging from a 26% decrease to a whopping 350% increase by the year 2100. @Yazdan-et-al-2022-FC. Particularly, homes in Sydney have been identified as more susceptible to climate change, emphasizing the importance of geographical factors. Another study shifts the focus to Asia, particularly to five major cities in China. This research expects an increase in cooling energy demands while foreseeing a decrease in heating requirements @Fard-Hosseini-2022-ML. These trends align with the general narrative that global warming is driving cooling needs upwards. Finally, a third study zeroes in on Brazil, forecasting an upsurge in energy demands by up to 185% by 2080. However, the paper also proposes that passive design techniques could significantly mitigate these energy demands, potentially reducing annual consumption by up to 50% @Invidiata-Ghisi-2016-CC.

Collectively, these studies underline that climate change will have a substantial impact on residential and office energy demands worldwide. They stress the significance of local geographical and climatic conditions and propose passive design as a key strategy for mitigating future energy needs.

## Methods, Software and Data Description

Regression analysis will be utilized to determine the relationship between the attributes of temperature, global warming, holidays, and days of the week against demand.

Python and R/Rsudio software will be used to analyse the data. Libraries and packages such as pandas, matplotlib, seaborn for Python and ggplot2, dplyr, caret for R are required in this analysis. RMarkdown, knitr will also be utilized for putting the analysis together.

The data provided contains energy demand data in 5-minute intervals from January 1, 2010, to August 1, 2022, for New South Wales. The data is in a comma-delimited file format, with columns labeled Datetime, RegionId, and TotalDemand. The RegionId consists only of NSW1.

The temperature data is in 30-minute intervals from January 1, 2010, to August 1, 2022, for New South Wales. The data is provided in a comma-delimited file format, with headings DateTime, Location, and Temperature (in Celsius). The source of the temperature data is the Bankstown weather location. Invalid temperatures, such as -9999, will be removed from the analysis.

The data will need further analysis and cleaning, including the removal of invalid and outlier data.

When merging these datasets, there will be mismatched data since the demand is in 5-minute intervals and the temperature data is in 30-minute intervals. There are approximately 1.3 million rows of demand data and 247,646 rows of temperature data; therefore, some analysis is required to map more demand data to temperature data. One possibility is to simulate temperature data for the data points that are not available.

Since this project aims to address questions regarding future energy demand, historical data will be utilized, and the datasets provided are an excellent starting point. Additional data will be sourced to enhance these datasets.

## Activities and Schedule

### Main tasks and activities

To achieve the objectives discussed in the previous sections, the following main tasks and activities will need to be completed:

-   Project planning.
-   Performing literature reviews.
-   Assessing the provided data set, including: temperature_nsw.csv and totaldemand_nsw.csv.
-   Researching algorithms: Identifying appropriate machine learning algorithms to use for the project.
-   Data cleaning: Identifying and excluding irrelevant data from the provided data set.
-   Data enriching: Identifying additional data to integrate with and enrich the provided data set.
-   Data integration: Combining and integrating the provided data sets with additional data.
-   Performing data analysis using machine learning algorithms.
-   Analyzing the output and providing recommendations.
-   Creating visualizations to communicate the findings from the analysis.
-   Writing the report.
-   Creating video presentations.

### Activities and Schedule

The skill sets within our group are diverse. Each team member possesses skills that complement one another, as illustrated in the Mind Map located in the Appendix section. Based on these skill sets, we have allocated tasks accordingly.

We plan to perform data cleaning, enrichment, and integration during Weeks 2 and 3. Data mining to uncover patterns and hidden relationships in the datasets will take place in Weeks 3 and 4.

Following these discoveries, a new plan will be implemented based on the data and analyses found. Decisions regarding useful visualizations will be noted as the project progresses. We will also gather more research and acquire an in-depth understanding to enrich our analysis.

Our aim is to complete all analyses and draw conclusions by the end of Week 4. Weeks 5 and 6 will be dedicated to refining the report and creating video presentations.

Below is a detailed timetable for the main project activities. The team member listed first for each activity is the primary owner and is responsible for completing that particular task:

```{=latex}
\begin{table}[!ht]
\begin{center}
\begin{tabular}{|l|c|c|c|}
\hline
Activity & Owner & Start Date & EndDate \\
\hline
Project Planning & All & Week 1 & Week 2 \\
\hline
Perform literature reviews & All & Week 2 & Week 2 \\
\hline
Assess the provided data set & All & Week 2 & Week 2 \\
\hline
Research algorithms & Abdo + Nezam & Week 2 & Week 3 \\
\hline
Data cleaning & Van + Pam & Week 2 & Week 3 \\
\hline
Data enriching & Pam + Van & Week 2 & Week 3 \\
\hline
Data integration & Van + Pam & Week 2 & Week 3 \\
\hline
Perform data analysis & Abdo + Nezam & Week 3 & Week 4 \\
\hline
Analyse the output & Nezam + Abdo & Week 3 & Week 4 \\
\hline
Create visualisations & Pam + Abdo & Week 3 & Week 4 \\
\hline
Write report & All & Week 5 & Week 6 \\
\hline
Create video presentations & All & Week 5 & Week 6 \\
\hline
\end{tabular}
\caption{\label{activity-schedule-table}Activity and Schedule}
\end{center}
\end{table}
```
More details on our activities and schedule are presented in the Gantt Chart in the Appendix section.

# Appendix {.unnumbered}

Below are the skill sets that each team member possesses. Based on these, we have distributed the work accordingly.

```{=tex}
\begin{figure}[ht]
\includegraphics[width = \textwidth, height=!]{images/ZZSC9020_Group_K_skillsets.jpeg}
\centering
\caption{ZZSC9020 Group K skill sets}
\end{figure}
```
Our activities and schedule are represented in the following Gantt Chart:

```{=tex}
\definecolor{barblue}{RGB}{153,204,254}
\definecolor{groupblue}{RGB}{51,102,254}
\definecolor{linkred}{RGB}{165,0,33}
\renewcommand\sfdefault{phv}
\renewcommand\mddefault{mc}
\renewcommand\bfdefault{bc}
\setganttlinklabel{s-s}{START-TO-START}
\setganttlinklabel{f-s}{FINISH-TO-START}
\setganttlinklabel{f-f}{FINISH-TO-FINISH}
\sffamily
\begin{ganttchart}[
    canvas/.append style={fill=none, draw=black!5, line width=.75pt},
    hgrid style/.style={draw=black!5, line width=.75pt},
    vgrid={*1{draw=black!5, line width=.75pt}},
    today=1,
    today rule/.style={
      draw=black!64,
      dash pattern=on 3.5pt off 4.5pt,
      line width=1.5pt
    },
    today label font=\small\bfseries,
    title/.style={draw=none, fill=none},
    title label font=\bfseries\footnotesize,
    title label node/.append style={below=7pt},
    include title in canvas=false,
    bar label font=\mdseries\small\color{black!70},
    bar label node/.append style={left=0.5cm},
    bar/.append style={draw=none, fill=black!63},
    bar incomplete/.append style={fill=barblue},
    bar progress label font=\mdseries\footnotesize\color{black!70},
    group incomplete/.append style={fill=groupblue},
    group left shift=0,
    group right shift=0,
    group height=.5,
    group peaks tip position=0,
    group label node/.append style={left=.1cm},
    group progress label font=\bfseries\small,
    link/.style={-latex, line width=1.5pt, linkred},
    link label font=\scriptsize\bfseries,
    link label node/.append style={below left=-2pt and 0pt}
  ]{1}{6}
  \gantttitle[
    title label node/.append style={below left=7pt and -3pt}
  ]{WEEKS:\quad1}{1}
  \gantttitlelist{2,...,6}{1} \\
  
  \ganttgroup[progress=75]{WBS 1 Project Plan}{1}{2} \\
  \ganttbar[
    progress=75,
    name=WBS1A
  ]{\textbf{WBS 1.1} Project Plan}{1}{2} \\

  \ganttgroup[progress=10]{WBS 2 Literature Review}{2}{2} \\
  \ganttbar[progress=10]{\textbf{WBS 2.1} Literature Review}{2}{2} \\

  \ganttgroup[progress=0]{WBS 3 Data Preparation}{2}{3} \\
  \ganttbar[progress=0, name = WBS31]{\textbf{WBS 3.1} Assess provided data set}{2}{2} \\
  \ganttbar[progress=0, name = WBS32]{\textbf{WBS 3.2} Data cleaning}{2}{2} \\
  \ganttbar[progress=0, name = WBS33]{\textbf{WBS 3.3} Data enriching}{2}{3} \\
  \ganttbar[progress=0, name = WBS34]{\textbf{WBS 3.3} Data integration}{2}{3} \\

  \ganttgroup[progress=0]{WBS 4 Data Analysis}{3}{4} \\
  \ganttbar[progress=0, name = WBS41]{\textbf{WBS 4.1} Apply algorithms}{3}{4} \\
  \ganttbar[progress=0, name = WBS42]{\textbf{WBS 4.2} Analyse output}{3}{4} \\

  \ganttgroup[progress=0]{WBS 5 Report and Presentation}{5}{6} \\
  \ganttbar[progress=0, name = WBS51]{\textbf{WBS 5.1} Create visualisation}{5}{6} \\
  \ganttbar[progress=0, name = WBS52]{\textbf{WBS 5.2} Write report}{5}{6} \\
  \ganttbar[progress=0, name = WBS53]{\textbf{WBS 5.3} Create video presentation}{5}{6} \\
  
  \ganttlink[link type=s-s]{WBS31}{WBS32}
  \ganttlink[link type=f-f]{WBS33}{WBS34}
  \ganttlink[link type=s-s]{WBS34}{WBS41}
  \ganttlink[link type=s-s]{WBS41}{WBS42}
  \ganttlink[link type=f-s]{WBS42}{WBS51}
  \ganttlink[link type=f-s]{WBS42}{WBS52}
  \ganttlink[link type=f-s]{WBS42}{WBS53}

\end{ganttchart}
```
# References {.unnumbered}

```{=tex}
\bibliographystyle{elsarticle-num}
\bibliography{references}
```
