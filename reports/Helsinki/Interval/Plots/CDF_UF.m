function createfigure(XMatrix1, YMatrix1, LMatrix1, UMatrix1)
%CREATEFIGURE(XMATRIX1, YMATRIX1, LMATRIX1, UMATRIX1)
%  XMATRIX1:  errorbar x matrix
%  YMATRIX1:  errorbar y matrix
%  LMATRIX1:  errorbar l matrix
%  UMATRIX1:  errorbar u matrix

%  Auto-generated by MATLAB on 10-Aug-2016 17:29:35

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on');
%% Uncomment the following line to preserve the X-limits of the axes
xlim(axes1,[0 10]);
%% Uncomment the following line to preserve the Y-limits of the axes
ylim(axes1,[0 100]);
box(axes1,'on');
hold(axes1,'all');

% Create multiple error bars using matrix input to errorbar
errorbar1 = errorbar(XMatrix1,YMatrix1,LMatrix1,UMatrix1,'Marker','x',...
    'LineWidth',2,...
    'MarkerSize',10,'Color',[0 0 1]);
set(errorbar1(3),'LineStyle','--','DisplayName','Single Contact Relay',...
    'MarkerSize',6);
set(errorbar1(2),'DisplayName','15 min Relay',...
    'Color',[0 0.498039215803146 0]);
set(errorbar1(1),'DisplayName','5 min Relay','Color',[1 0 0]);

% Create title
title({'Average Percentage of Users with Up to Date Content Across all Intervals (30 min Interval, Flooding)'},...
    'FontWeight','bold',...
    'FontSize',12);

% Create xlabel
xlabel('Sample Interval','FontWeight','demi','FontSize',12);

% Create ylabel
ylabel('Average Percentage %','FontWeight','demi','FontSize',12);

% Create legend
legend(axes1,'show');

propertyeditor('on');