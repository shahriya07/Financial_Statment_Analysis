# Analysing Financials of a company with the given data(Revenue and expenses) in more readable format

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Calculating profit for each month
profit <- revenue - expenses
profit

#Profit after 30% tax
tax <- round(profit * 0.3, digits=2)
tax

profit.after.tax <- profit - tax
profit.after.tax

#Profit Margin
margin <- profit.after.tax / revenue
marginPercentage <- round(margin * 100)
marginPercentage

#Good months
mean_pat <- mean(profit.after.tax)
mean_pat

goodMonths <- profit.after.tax > mean_pat
goodMonths

#Bad months

badMonths <- profit.after.tax < mean_pat
badMonths

#best Month
best_month <- profit.after.tax == max(profit.after.tax)
best_month

#worst month
worst_month <- profit.after.tax == min(profit.after.tax)
worst_month

#Unit of 1000.
revenue.1000 <- round(revenue / 1000)
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(profit / 1000)
profit.after.tax.1000 <- round(profit.after.tax / 1000)
marginPercentage
goodMonths
badMonths
best_month
worst_month

analysis <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  marginPercentage,
  goodMonths,
  badMonths,
  best_month,
  worst_month
)

round(analysis)
