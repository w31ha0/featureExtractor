.class public Lcom/biznessapps/fragments/single/EmailPhotoFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "EmailPhotoFragment.java"


# static fields
.field private static final EMAIL_PHOTO_IMAGE:Ljava/lang/String; = "email_photo_image.jpg"

.field private static final PHOTO_WAS_SELECTED:I = 0x1

.field private static final PICTURE_WAS_SELECTED:I = 0x2


# instance fields
.field private emailPhotoButton:Landroid/widget/Button;

.field private emailPhotoTextView:Landroid/widget/TextView;

.field private info:Lcom/biznessapps/model/EmailPhotoItem;

.field private photoImage:Ljava/io/File;

.field private selectedImagePath:Ljava/lang/String;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhoto()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->openStandartPhotoView()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->choseFromLibrary()V

    return-void
.end method

.method private choseFromLibrary()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    sget v1, Lcom/biznessapps/layout/R$string;->select_image:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method

.method private email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailTo"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "emailText"    # Ljava/lang/String;
    .param p5, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->send_email:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private emailPhoto()V
    .locals 8

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->email_photo_dialog:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .line 121
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    sget v6, Lcom/biznessapps/layout/R$string;->choose_photo:I

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 125
    .local v3, "dialog":Landroid/app/AlertDialog;
    sget v6, Lcom/biznessapps/layout/R$id;->take_photo_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 126
    .local v4, "takePhotoButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->chose_from_library_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 127
    .local v2, "choseFromLibraryButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->email_photo_cancel:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v6, Lcom/biznessapps/fragments/single/EmailPhotoFragment$2;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/fragments/single/EmailPhotoFragment$2;-><init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v6, Lcom/biznessapps/fragments/single/EmailPhotoFragment$3;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/fragments/single/EmailPhotoFragment$3;-><init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v6, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;-><init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 155
    return-void
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 209
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 212
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/activities/CommonFragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 213
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 214
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 215
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    .end local v6    # "column_index":I
    :cond_0
    return-object v3
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/EmailPhotoFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment$1;-><init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_photo_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$drawable;->button_light_gray_src:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_photo_description:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoTextView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 106
    return-void
.end method

.method private openStandartPhotoView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "email_photo_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->photoImage:Ljava/io/File;

    .line 170
    const-string v2, "output"

    iget-object v3, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->photoImage:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1, v5}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->sdcard_missed:I

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setBackgrounds()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->email_photo_root:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .local v1, "layout":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/EmailPhotoItem;->getImage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->bitmapUrl:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->bitmapUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhotoTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/EmailPhotoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    .line 83
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    const-string v0, "http://www.biznessapps.com/iphone/email_photo.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/EmailPhotoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 197
    invoke-super/range {p0 .. p3}, Lcom/biznessapps/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 185
    :pswitch_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "email_photo_image.jpg"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v5, "photo":Ljava/io/File;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 189
    .end local v5    # "photo":Ljava/io/File;
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 190
    .local v12, "selectedImageUri":Landroid/net/Uri;
    invoke-direct {p0, v12}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    new-instance v11, Ljava/io/File;

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->selectedImagePath:Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v11, "picture":Ljava/io/File;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getEmail()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getSubject()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    sget v0, Lcom/biznessapps/layout/R$layout;->email_photo_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->initViews()V

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->initListeners()V

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->loadData()V

    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->tabId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseEmailPhoto(Ljava/lang/String;)Lcom/biznessapps/model/EmailPhotoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL_PHOTO_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->setBackgrounds()V

    .line 78
    return-void
.end method
