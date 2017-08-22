.class public Lvpadn/m;
.super Ljava/lang/Exception;
.source "GlobalizationError.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/m;->a:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/m;->a:I

    .line 54
    const-string v0, "FORMATTING_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lvpadn/m;->a:I

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v0, "PARSING_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lvpadn/m;->a:I

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "PATTERN_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lvpadn/m;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    const-string v0, ""

    .line 69
    iget v1, p0, Lvpadn/m;->a:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "UNKNOWN_ERROR"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "FORMATTING_ERROR"

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "PARSING_ERROR"

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v0, "PATTERN_ERROR"

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lvpadn/m;->a:I

    return v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0}, Lvpadn/m;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v1, "message"

    invoke-virtual {p0}, Lvpadn/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method
