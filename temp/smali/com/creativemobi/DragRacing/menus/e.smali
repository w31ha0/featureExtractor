.class final Lcom/creativemobi/DragRacing/menus/e;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/widget/EditText;

.field private synthetic d:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/menus/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/creativemobi/DragRacing/menus/e;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/creativemobi/DragRacing/menus/e;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 528
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Lcom/creativemobi/DragRacing/menus/MainMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0, v3}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)Z

    .line 533
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;)Lcom/creativemobi/engine/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/bp;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Checking name availability..."

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0, v1, v2, v3}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    .line 545
    :goto_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 548
    invoke-static {}, Lcom/creativemobi/engine/bp;->q()Ljava/lang/String;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_1

    .line 551
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Username set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;)Lcom/creativemobi/engine/bp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/bp;->g(Ljava/lang/String;)V

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->dismissDialog(I)V

    .line 594
    :goto_2
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0, v4}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)Z

    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Checking name availability..."

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 558
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 583
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 586
    :goto_3
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/DragRacing/menus/i;

    invoke-direct {v1, p0}, Lcom/creativemobi/DragRacing/menus/i;-><init>(Lcom/creativemobi/DragRacing/menus/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 560
    :sswitch_0
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Failed to connect to server"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 562
    :sswitch_1
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Error: user already exists"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 566
    :sswitch_2
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->a(Landroid/content/Context;)V

    .line 567
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0, v4}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)Z

    .line 568
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/e;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/menus/e;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 572
    :sswitch_3
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Error: chosen name includes forbidden symbols"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 574
    :sswitch_4
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Error: name already in use"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 578
    :sswitch_5
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server too busy ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), please try again later"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 580
    :sswitch_6
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/e;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Registration temporarily disabled, please try again in a few minutes"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 558
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_5
        0x1f8 -> :sswitch_5
        0x323 -> :sswitch_6
        0x32b -> :sswitch_1
        0x32c -> :sswitch_3
        0x336 -> :sswitch_3
        0x33f -> :sswitch_2
        0x34a -> :sswitch_4
    .end sparse-switch
.end method
