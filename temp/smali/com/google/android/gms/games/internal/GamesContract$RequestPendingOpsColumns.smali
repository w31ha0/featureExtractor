.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$RequestPendingOpsColumns;
.super Ljava/lang/Object;


# static fields
.field public static final zzaqp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client_context_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "external_request_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "external_game_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$RequestPendingOpsColumns;->zzaqp:[Ljava/lang/String;

    return-void
.end method
