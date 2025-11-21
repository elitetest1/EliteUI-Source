.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WrapFileClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient blacklist mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field private blacklist mDir:Ljava/io/File;

.field private blacklist mPath:Ljava/io/File;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setPersistableBundle(Landroid/os/PersistableBundle;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-void
.end method

.method private blacklist loadData()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->replacePathForCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    :cond_0
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, p0}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->checkClipId()V

    iget-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result p1

    const-string v1, "WrapFileClipData"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->toLoad()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->toLoad()V

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "SemImageClipData is not exist. Hence return false"

    invoke-static {v1, p0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toLoad()V

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SemTextClipData is empty. Hence return false"

    invoke-static {v1, p0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public blacklist getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    :cond_0
    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object p0
.end method

.method public blacklist getDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-object p0
.end method

.method public blacklist getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object p0
.end method

.method public blacklist load()Z
    .locals 3

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "WrapFileClipData"

    const-string v0, "While loading data, no matching class found!"

    invoke-static {p0, v0}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist save()V
    .locals 2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->toSave()V

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    iget-object p0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v0, v1, p0}, Landroid/sec/clipboard/util/FileHelper;->saveObjectFile(Ljava/io/File;Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-void
.end method

.method public blacklist setDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-void
.end method

.method public blacklist setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-void
.end method
