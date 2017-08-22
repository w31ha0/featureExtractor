.class public Lvpadn/cd;
.super Lvpadn/bu;
.source "CreateCalendarCommandOneStatus.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/Date;

.field private i:Ljava/text/DateFormat;

.field private j:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, p3}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 26
    iput-object v1, p0, Lvpadn/cd;->b:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lvpadn/cd;->c:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lvpadn/cd;->d:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lvpadn/cd;->e:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lvpadn/cd;->f:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lvpadn/cd;->g:Ljava/util/Date;

    .line 32
    iput-object v1, p0, Lvpadn/cd;->h:Ljava/util/Date;

    .line 40
    iput-object p2, p0, Lvpadn/cd;->a:Lorg/json/JSONObject;

    .line 41
    iput-object p1, p0, Lvpadn/cd;->j:Lvpadn/cs;

    .line 43
    :try_start_0
    new-instance v0, Lvpadn/cd$1;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, p0, v1}, Lvpadn/cd$1;-><init>(Lvpadn/cd;Ljava/lang/String;)V

    iput-object v0, p0, Lvpadn/cd;->i:Ljava/text/DateFormat;

    .line 49
    iget-object v0, p0, Lvpadn/cd;->a:Lorg/json/JSONObject;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_4

    .line 53
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->f:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lvpadn/cd;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lvpadn/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->f:Ljava/lang/String;

    .line 57
    :cond_0
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->c:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lvpadn/cd;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lvpadn/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->c:Ljava/lang/String;

    .line 61
    :cond_1
    const-string v1, "start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->d:Ljava/lang/String;

    .line 64
    :cond_2
    const-string v1, "end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const-string v1, "end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvpadn/cd;->e:Ljava/lang/String;

    .line 68
    :cond_3
    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cd;->b:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lvpadn/cd;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lvpadn/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cd;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_4
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 86
    :goto_0
    return-object p1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "CreateCalendarCommandOneStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URLDecoder.decode(body, UTF-8); throw Exception description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lvpadn/cd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cd;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    const-string v0, "CreateCalendarCommandOneStatus"

    const-string v1, "Cannot get start or end at CreateCalendarCommandOneStatus"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lvpadn/cd;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 97
    const-string v0, "CreateCalendarCommandOneStatus"

    const-string v1, "Cannot get title (description) at CreateCalendarCommandOneStatus"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    :try_start_0
    iget-object v0, p0, Lvpadn/cd;->i:Ljava/text/DateFormat;

    iget-object v1, p0, Lvpadn/cd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cd;->g:Ljava/util/Date;

    .line 104
    iget-object v0, p0, Lvpadn/cd;->i:Ljava/text/DateFormat;

    iget-object v1, p0, Lvpadn/cd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lvpadn/cd;->h:Ljava/util/Date;

    .line 105
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lvpadn/cd;->g:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 111
    const-string v2, "beginTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lvpadn/cd;->h:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lvpadn/cd;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "description"

    iget-object v2, p0, Lvpadn/cd;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_3
    iget-object v0, p0, Lvpadn/cd;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 121
    const-string v0, "eventLocation"

    iget-object v2, p0, Lvpadn/cd;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    :cond_4
    iget-object v0, p0, Lvpadn/cd;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 125
    const-string v0, "title"

    iget-object v2, p0, Lvpadn/cd;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_5
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lvpadn/cd;->j:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->k()Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "CreateCalendarCommandOneStatus"

    const-string v2, "doExecute() throw Exception at CreateCalendarCommandOneStatus"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
