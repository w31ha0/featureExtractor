.class Lvpadn/cd$1;
.super Ljava/text/SimpleDateFormat;
.source "CreateCalendarCommandOneStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cd;-><init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cd;


# direct methods
.method constructor <init>(Lvpadn/cd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lvpadn/cd$1;->a:Lvpadn/cd;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 45
    const-string v0, ":(?=[0-9]{2}$)"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
