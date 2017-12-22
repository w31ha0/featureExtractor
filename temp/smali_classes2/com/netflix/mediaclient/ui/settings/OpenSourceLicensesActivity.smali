.class public Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "OpenSourceLicensesActivity.java"


# static fields
.field private static final APACHE_LICENSE_20:Ljava/lang/String; = "\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at:\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License."

.field private static final ROUNDED_IMAGE_VIEW_LICENSE:Ljava/lang/String; = "Copyright (c) 2013, Vincent Mi\n\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at:\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License."

.field private static final oslInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->oslInfo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->oslInfo:Ljava/util/List;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createHeaderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const v0, 0x7f09015b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOslInfo()V
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->oslInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->oslInfo:Ljava/util/List;

    new-instance v1, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;

    const-string/jumbo v2, "RoundedImageView"

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->createHeaderText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Copyright (c) 2013, Vincent Mi\n\nLicensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License.  You may obtain a copy of the License at:\n\n    http://www.apache.org/licenses/LICENSE-2.0\n\nUnless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License."

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;-><init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->openSourceLicenses:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->createOslInfo()V

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const v1, 0x7f090159

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 52
    :cond_0
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 54
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->addActionBarPaddingView(Landroid/widget/ListView;)V

    .line 55
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$OslAdapter;-><init>(Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/OpenSourceLicensesActivity;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
