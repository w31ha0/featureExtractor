.class Lcom/adbert/AdbertADView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->a(ILandroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/adbert/AdbertADView$13;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1087
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/adbert/AdbertADView$13;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 1091
    invoke-static {p1}, Lcom/adbert/a/i;->g(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1092
    invoke-static {p2}, Lcom/adbert/a/i;->g(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 1093
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1094
    const/4 v0, -0x1

    .line 1098
    :goto_0
    return v0

    .line 1095
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1096
    const/4 v0, 0x0

    goto :goto_0

    .line 1098
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
