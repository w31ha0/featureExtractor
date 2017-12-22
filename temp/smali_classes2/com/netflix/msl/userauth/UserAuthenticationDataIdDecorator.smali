.class public interface abstract Lcom/netflix/msl/userauth/UserAuthenticationDataIdDecorator;
.super Ljava/lang/Object;
.source "UserAuthenticationDataIdDecorator.java"


# static fields
.field public static final ACTION_TAG_NAME:Ljava/lang/String; = "action"

.field public static final HAS_NETFLIX_ID_TAG_NAME:Ljava/lang/String; = "hasNetflixId"

.field public static final HAS_SECURE_NETFLIX_ID_TAG_NAME:Ljava/lang/String; = "hasSecureNetflixId"

.field public static final MECHANISM_TAG_NAME:Ljava/lang/String; = "mechanism"


# virtual methods
.method public abstract decorate(Lcom/netflix/spectator/api/Id;)Lcom/netflix/spectator/api/Id;
.end method
