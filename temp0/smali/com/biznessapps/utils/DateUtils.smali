.class public Lcom/biznessapps/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateBySec(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "dateInSec"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "date":Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 21
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "date":Ljava/util/Date;
    .local v1, "date":Ljava/util/Date;
    move-object v0, v1

    .line 29
    .end local v1    # "date":Ljava/util/Date;
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
