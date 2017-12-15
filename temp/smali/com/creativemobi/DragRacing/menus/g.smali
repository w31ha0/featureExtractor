.class final Lcom/creativemobi/DragRacing/menus/g;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/app/Dialog;

.field private synthetic c:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/g;->c:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/menus/g;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/creativemobi/DragRacing/menus/g;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/g;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/g;->c:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Player name must be at least 4 characters long"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/g;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 451
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/g;->c:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/g;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/creativemobi/DragRacing/menus/g;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0, v2, v3}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;)V

    goto :goto_0
.end method
