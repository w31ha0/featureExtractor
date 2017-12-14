.class Lcom/tutusw/phonespeedup/ProfileEditActivity$2;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/ProfileEditActivity;->showProfilesWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$2;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$2;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "profilesFirstLaunch3"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 580
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$2;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 581
    return-void
.end method
