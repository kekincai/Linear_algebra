# 创建网格
n <- 500
x <- y <- seq(-10, 10, length = n)
z <- outer(x, y, "+")

# 设置输出为PNG文件
res <- 100
fn <- "cover.png"
png(fn, width = 8 * res, height = 6 * res, res = res, pointsize = 15)
message("Writing:", fn)
# 绘制图形
persp(x, y, z,
    theta = 30, phi = 30,
    col = adjustcolor("steelblue", 0.5),
    border = NA, box = TRUE,
    xlab = "X", ylab = "Y", zlab = "Z",
    main = expression(z == x + y),
    cex = 4, cex.axis = 4, cex.main = 4
)

# 关闭PNG设备，保存文件
dev.off()
