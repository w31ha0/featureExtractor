.class final Lcom/creativemobi/DragRacing/menus/c;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/net/Uri;

.field private synthetic b:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/c;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/menus/c;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/c;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/c;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {v1, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->startActivity(Landroid/content/Intent;)V

    .line 485
    return-void
.end method
