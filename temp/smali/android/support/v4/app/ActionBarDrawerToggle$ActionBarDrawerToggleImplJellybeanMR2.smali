.class Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method


# virtual methods
.method public getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 171
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/ActionBarDrawerToggleJellybeanMR2;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
