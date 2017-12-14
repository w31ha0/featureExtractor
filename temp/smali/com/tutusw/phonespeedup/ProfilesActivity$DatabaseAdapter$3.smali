.class Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$3;
.super Ljava/lang/Object;
.source "ProfilesActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$3;->this$1:Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
