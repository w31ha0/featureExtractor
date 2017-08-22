.class public Lcom/adbert/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/adbert/a/a/a;

.field b:Landroid/content/Context;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/adbert/a/a/a;

    invoke-direct {v0}, Lcom/adbert/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/d;->d:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/d;->e:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/a/d;->f:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/adbert/a/d;->b:Landroid/content/Context;

    .line 27
    iput-boolean p2, p0, Lcom/adbert/a/d;->c:Z

    .line 28
    return-void
.end method

.method private a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p3}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->i:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 161
    sget-object v0, Lcom/adbert/a/b/c;->Q:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/adbert/a/d;->b:Landroid/content/Context;

    sget-object v2, Lcom/adbert/a/b/d;->Z:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    sget-object v2, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adbert/a/d;->d:Ljava/lang/String;

    .line 167
    sget-object v2, Lcom/adbert/a/b/d;->P:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adbert/a/d;->e:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    sget-object v3, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    sget-object v3, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v2, v3, :cond_2

    .line 169
    :cond_0
    sget-object v2, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adbert/a/d;->f:Ljava/lang/String;

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->j:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/d;->A:Lcom/adbert/a/b/d;

    iget-object v3, p0, Lcom/adbert/a/d;->d:Ljava/lang/String;

    .line 175
    invoke-virtual {v2, v3}, Lcom/adbert/a/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/d;->d:Lcom/adbert/a/b/d;

    iget-object v3, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/d;->P:Lcom/adbert/a/b/d;

    iget-object v3, p0, Lcom/adbert/a/d;->e:Ljava/lang/String;

    .line 176
    invoke-virtual {v2, v3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/d;->z:Lcom/adbert/a/b/d;

    sget-object v3, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    .line 177
    invoke-virtual {v3, p1}, Lcom/adbert/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/d;->J:Lcom/adbert/a/b/d;

    iget-object v3, p0, Lcom/adbert/a/d;->f:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v3}, Lcom/adbert/a/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&OSType=Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    .line 182
    :goto_1
    sget-object v0, Lcom/adbert/a/b/c;->q:Lcom/adbert/a/b/c;

    if-ne p3, v0, :cond_1

    const-string v0, "fbPageId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const-string v1, "fbPageId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->F:Ljava/lang/String;

    .line 186
    :cond_1
    return-void

    .line 171
    :cond_2
    sget-object v2, Lcom/adbert/a/b/d;->K:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adbert/a/d;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->j:[Ljava/lang/String;

    invoke-virtual {p4}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/adbert/a/a/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/adbert/a/d;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "gaUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const-string v2, "gaUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->E:Ljava/lang/String;

    .line 40
    :cond_0
    sget-object v0, Lcom/adbert/a/b/c;->a:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->a:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->r:Ljava/lang/String;

    .line 42
    :cond_1
    sget-object v0, Lcom/adbert/a/b/c;->b:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->b:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->s:Ljava/lang/String;

    .line 44
    :cond_2
    sget-object v0, Lcom/adbert/a/b/c;->c:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->c:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->t:Ljava/lang/String;

    .line 46
    :cond_3
    sget-object v0, Lcom/adbert/a/b/c;->d:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->d:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->u:Ljava/lang/String;

    .line 48
    :cond_4
    sget-object v0, Lcom/adbert/a/b/c;->e:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->e:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->v:Ljava/lang/String;

    .line 50
    :cond_5
    sget-object v0, Lcom/adbert/a/b/c;->F:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->F:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->y:Ljava/lang/String;

    .line 52
    :cond_6
    sget-object v0, Lcom/adbert/a/b/c;->G:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->G:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->z:Ljava/lang/String;

    .line 54
    :cond_7
    sget-object v0, Lcom/adbert/a/b/c;->f:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/adbert/a/b/c;->f:Lcom/adbert/a/b/c;

    .line 55
    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/c;->g:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adbert/a/a/a;->l:Z

    .line 57
    :cond_8
    sget-object v0, Lcom/adbert/a/b/c;->E:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/adbert/a/b/c;->E:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_9

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->E:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/adbert/a/a/a;->c:I

    .line 60
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v2, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget v2, v2, Lcom/adbert/a/a/a;->c:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lcom/adbert/a/a/a;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_9
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adbert/a/b/c;->h:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v2, Lcom/adbert/a/b/c;->h:Lcom/adbert/a/b/c;

    invoke-virtual {v2}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->d:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adbert/a/a/a;->B:Z

    .line 68
    :cond_b
    invoke-virtual {p0, v1}, Lcom/adbert/a/d;->a(Lorg/json/JSONObject;)Lcom/adbert/a/d;

    .line 72
    return-object p0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    throw v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/adbert/a/d;
    .locals 3

    .prologue
    .line 77
    :try_start_0
    sget-object v0, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/adbert/a/b/c;->I:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/adbert/a/b/c;->i:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 82
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    invoke-virtual {v2}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    .line 84
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->f:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 85
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->A:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->x:Ljava/lang/String;

    .line 119
    :cond_0
    :goto_0
    sget-object v0, Lcom/adbert/a/b/c;->T:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adbert/a/b/c;->T:Lcom/adbert/a/b/c;

    .line 120
    invoke-virtual {v0}, Lcom/adbert/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->A:Z

    .line 123
    :cond_1
    sget-object v0, Lcom/adbert/a/b/c;->k:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adbert/a/b/c;->k:Lcom/adbert/a/b/c;

    .line 124
    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/c;->g:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->q:Z

    .line 127
    :cond_2
    sget-object v0, Lcom/adbert/a/b/i;->b:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/c;->u:Lcom/adbert/a/b/c;

    sget-object v2, Lcom/adbert/a/b/c;->v:Lcom/adbert/a/b/c;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adbert/a/d;->a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V

    .line 129
    sget-object v0, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/c;->m:Lcom/adbert/a/b/c;

    sget-object v2, Lcom/adbert/a/b/c;->n:Lcom/adbert/a/b/c;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adbert/a/d;->a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V

    .line 130
    iget-object v0, p0, Lcom/adbert/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 131
    sget-object v0, Lcom/adbert/a/b/i;->d:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/c;->s:Lcom/adbert/a/b/c;

    sget-object v2, Lcom/adbert/a/b/c;->t:Lcom/adbert/a/b/c;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adbert/a/d;->a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V

    .line 133
    :cond_3
    sget-object v0, Lcom/adbert/a/b/i;->e:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/c;->q:Lcom/adbert/a/b/c;

    sget-object v2, Lcom/adbert/a/b/c;->r:Lcom/adbert/a/b/c;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adbert/a/d;->a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V

    .line 134
    iget-object v0, p0, Lcom/adbert/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lcom/adbert/a/b/i;->f:Lcom/adbert/a/b/i;

    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v0

    sget-object v1, Lcom/adbert/a/b/c;->l:Lcom/adbert/a/b/c;

    sget-object v2, Lcom/adbert/a/b/c;->z:Lcom/adbert/a/b/c;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adbert/a/d;->a(ILorg/json/JSONObject;Lcom/adbert/a/b/c;Lcom/adbert/a/b/c;)V

    .line 138
    :cond_4
    sget-object v0, Lcom/adbert/a/b/c;->w:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    sget-object v0, Lcom/adbert/a/b/c;->w:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/c;->x:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->k:Z

    .line 147
    :cond_5
    :goto_1
    const-string v0, "adServing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const-string v1, "adServing"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->C:Z

    .line 154
    :cond_6
    return-object p0

    .line 86
    :cond_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    invoke-virtual {v2}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    .line 88
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->e:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 89
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->A:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    throw v0

    .line 90
    :cond_8
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    invoke-virtual {v1}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    .line 92
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->e:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 93
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->A:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 95
    :cond_9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    invoke-virtual {v2}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 97
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->L:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->M:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    goto/16 :goto_0

    .line 100
    :cond_a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    invoke-virtual {v2}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 102
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->j:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    goto/16 :goto_0

    .line 104
    :cond_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    invoke-virtual {v2}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->d:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 106
    iget-boolean v0, p0, Lcom/adbert/a/d;->c:Z

    if-nez v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->K:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->h:Ljava/lang/String;

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    goto/16 :goto_0

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->J:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->h:Ljava/lang/String;

    goto :goto_2

    .line 112
    :cond_d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    invoke-virtual {v1}, Lcom/adbert/a/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    .line 114
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->L:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    sget-object v1, Lcom/adbert/a/b/c;->B:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    iput-object v1, v0, Lcom/adbert/a/a/a;->b:Lcom/adbert/a/b/b;

    goto/16 :goto_0

    .line 141
    :cond_e
    sget-object v0, Lcom/adbert/a/b/c;->w:Lcom/adbert/a/b/c;

    invoke-virtual {v0}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/c;->y:Lcom/adbert/a/b/c;

    invoke-virtual {v1}, Lcom/adbert/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->k:Z

    goto/16 :goto_1

    .line 144
    :cond_f
    iget-object v0, p0, Lcom/adbert/a/d;->a:Lcom/adbert/a/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adbert/a/a/a;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
