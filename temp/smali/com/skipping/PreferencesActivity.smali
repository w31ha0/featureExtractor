.class public Lcom/skipping/PreferencesActivity;
.super Landroid/app/Activity;
.source "PreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/skipping/PreferencesActivity;->finish()V

    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/skipping/PreferencesActivity;->setContentView(I)V

    .line 14
    return-void
.end method
