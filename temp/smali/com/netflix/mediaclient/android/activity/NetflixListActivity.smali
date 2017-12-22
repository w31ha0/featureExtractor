.class public Lcom/netflix/mediaclient/android/activity/NetflixListActivity;
.super Landroid/app/ListActivity;
.source "NetflixListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "GKB: Don\'t use ListActivities - they kill our ability to maintain a single activity hierarchy (e.g. NetflixActivity)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
