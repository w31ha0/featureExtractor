.class public interface abstract Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
.super Ljava/lang/Object;
.source "SlidingMenuAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/servicemgr/TTIListener;


# virtual methods
.method public abstract canLoadNotifications()Z
.end method

.method public abstract onActivityPause(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end method

.method public abstract onActivityResume(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract setSelectedGenre(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V
.end method
