.class public Lcom/samsung/android/fontutil/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field private blacklist mDroidName:Ljava/lang/String;

.field private blacklist mFileName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getDroidName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDroidName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Filename : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / Droidname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/fontutil/TypefaceFile;->mDroidName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
