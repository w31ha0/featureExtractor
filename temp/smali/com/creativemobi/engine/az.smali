.class final Lcom/creativemobi/engine/az;
.super Ljava/lang/Object;
.source "RacingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 0

    .prologue
    .line 1390
    iput p1, p0, Lcom/creativemobi/engine/az;->a:I

    iput p2, p0, Lcom/creativemobi/engine/az;->b:I

    iput-object p3, p0, Lcom/creativemobi/engine/az;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1393
    invoke-static {}, Lcom/creativemobi/engine/bp;->v()V

    .line 1394
    const-string v0, "http://acm.master-code.ru/?gameId=1001&op=1&level=%1$d&distance=%2$d&id=%3$s&password=%4$s&uid=%5$s"

    .line 1395
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/creativemobi/engine/az;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/creativemobi/engine/az;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/creativemobi/engine/bp;->x()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    iget-object v1, p0, Lcom/creativemobi/engine/az;->c:[B

    invoke-static {v0, v1}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, "http://cmobile.master-code.ru/?gameId=1001&op=1&level=%1$d&distance=%2$d&id=%3$s&password=%4$s&uid=%5$s"

    .line 1398
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/creativemobi/engine/az;->a:I

    invoke-static {}, Lcom/creativemobi/engine/bp;->z()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/creativemobi/engine/az;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/creativemobi/engine/bp;->x()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/creativemobi/engine/bp;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    iget-object v1, p0, Lcom/creativemobi/engine/az;->c:[B

    invoke-static {v0, v1}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;[B)Z

    .line 1401
    :cond_0
    return-void
.end method
