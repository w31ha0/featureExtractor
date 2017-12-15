.class final Lcom/creativemobi/DragRacing/billing/t;
.super Lcom/creativemobi/DragRacing/billing/c;
.source "BillingInterface.java"


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/billing/b;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/b;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    .line 89
    invoke-static {p1}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/creativemobi/DragRacing/billing/c;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/DragRacing/billing/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    if-nez p3, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/creativemobi/DragRacing/billing/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/i;->a:Lcom/creativemobi/DragRacing/billing/i;

    if-ne p1, v0, :cond_9

    .line 121
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 134
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 137
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 500 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    .line 182
    :cond_1
    :goto_2
    return-void

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 131
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_4
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x4e2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 143
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 1250 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 146
    :cond_5
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 149
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 2500 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 152
    :cond_6
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 155
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 5000 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 158
    :cond_7
    sget-object v0, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a()Lcom/creativemobi/engine/bp;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 161
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "You received 10000 RP!"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->d(Lcom/creativemobi/DragRacing/billing/b;)Lcom/creativemobi/DragRacing/billing/q;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 177
    :cond_9
    sget-object v0, Lcom/creativemobi/DragRacing/billing/i;->c:Lcom/creativemobi/DragRacing/billing/i;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/creativemobi/DragRacing/billing/i;->b:Lcom/creativemobi/DragRacing/billing/i;

    if-ne p1, v0, :cond_1

    .line 178
    :cond_a
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->c(Lcom/creativemobi/DragRacing/billing/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public final a(Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Lcom/creativemobi/DragRacing/billing/o;->a:Lcom/creativemobi/DragRacing/billing/o;

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->a(Lcom/creativemobi/DragRacing/billing/b;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    :cond_0
    return-void
.end method

.method public final a(Lcom/creativemobi/DragRacing/billing/r;Lcom/creativemobi/DragRacing/billing/o;)V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/creativemobi/DragRacing/billing/o;->a:Lcom/creativemobi/DragRacing/billing/o;

    if-ne p2, v0, :cond_0

    .line 194
    iget-object v0, p1, Lcom/creativemobi/DragRacing/billing/r;->a:Ljava/lang/String;

    const-string v1, "sending purchase request"

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/creativemobi/DragRacing/billing/o;->b:Lcom/creativemobi/DragRacing/billing/o;

    if-ne p2, v0, :cond_1

    .line 199
    iget-object v0, p1, Lcom/creativemobi/DragRacing/billing/r;->a:Ljava/lang/String;

    const-string v1, "dismissed purchase dialog"

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p1, Lcom/creativemobi/DragRacing/billing/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request purchase returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    iput-boolean p1, v0, Lcom/creativemobi/DragRacing/billing/b;->a:Z

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/t;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->b(Lcom/creativemobi/DragRacing/billing/b;)V

    .line 105
    :cond_0
    return-void
.end method
