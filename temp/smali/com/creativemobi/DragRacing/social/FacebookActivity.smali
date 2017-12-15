.class public Lcom/creativemobi/DragRacing/social/FacebookActivity;
.super Landroid/app/Activity;
.source "FacebookActivity.java"


# instance fields
.field private a:Lcom/creativemobi/DragRacing/social/a;

.field private b:Lcom/creativemobi/DragRacing/social/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/creativemobi/DragRacing/social/FacebookActivity;)Lcom/creativemobi/DragRacing/social/a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a:Lcom/creativemobi/DragRacing/social/a;

    return-object v0
.end method

.method static synthetic b(Lcom/creativemobi/DragRacing/social/FacebookActivity;)Lcom/creativemobi/DragRacing/social/h;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->b:Lcom/creativemobi/DragRacing/social/h;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/creativemobi/DragRacing/social/a;->a(IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/social/FacebookActivity;->setContentView(I)V

    .line 29
    new-instance v0, Lcom/creativemobi/DragRacing/social/a;

    const-string v1, "118770751535882"

    invoke-direct {v0, v1}, Lcom/creativemobi/DragRacing/social/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a:Lcom/creativemobi/DragRacing/social/a;

    .line 30
    new-instance v0, Lcom/creativemobi/DragRacing/social/h;

    iget-object v1, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a:Lcom/creativemobi/DragRacing/social/a;

    invoke-direct {v0, v1}, Lcom/creativemobi/DragRacing/social/h;-><init>(Lcom/creativemobi/DragRacing/social/a;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->b:Lcom/creativemobi/DragRacing/social/h;

    .line 32
    iget-object v0, p0, Lcom/creativemobi/DragRacing/social/FacebookActivity;->a:Lcom/creativemobi/DragRacing/social/a;

    new-instance v1, Lcom/creativemobi/DragRacing/social/c;

    invoke-direct {v1, p0}, Lcom/creativemobi/DragRacing/social/c;-><init>(Lcom/creativemobi/DragRacing/social/FacebookActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/creativemobi/DragRacing/social/a;->a(Landroid/app/Activity;Lcom/creativemobi/DragRacing/social/d;)V

    .line 60
    return-void
.end method
