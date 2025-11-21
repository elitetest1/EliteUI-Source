.class public final Landroid/media/quality/PictureProfile$Builder;
.super Ljava/lang/Object;
.source "PictureProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/PictureProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHandle:Landroid/media/quality/PictureProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mInputId:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParams:Landroid/os/PersistableBundle;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/quality/PictureProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/PictureProfile$Builder;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result v0

    iput v0, p0, Landroid/media/quality/PictureProfile$Builder;->mType:I

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getInputId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mInputId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mHandle:Landroid/media/quality/PictureProfileHandle;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/PictureProfile$Builder;->mType:I

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/quality/PictureProfile;
    .locals 8

    new-instance v0, Landroid/media/quality/PictureProfile;

    iget-object v1, p0, Landroid/media/quality/PictureProfile$Builder;->mId:Ljava/lang/String;

    iget v2, p0, Landroid/media/quality/PictureProfile$Builder;->mType:I

    iget-object v3, p0, Landroid/media/quality/PictureProfile$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/quality/PictureProfile$Builder;->mInputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/quality/PictureProfile$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/quality/PictureProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    iget-object v7, p0, Landroid/media/quality/PictureProfile$Builder;->mHandle:Landroid/media/quality/PictureProfileHandle;

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/PictureProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V

    return-object v0
.end method

.method public blacklist setHandle(Landroid/media/quality/PictureProfileHandle;)Landroid/media/quality/PictureProfile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mHandle:Landroid/media/quality/PictureProfileHandle;

    return-object p0
.end method

.method public whitelist setInputId(Ljava/lang/String;)Landroid/media/quality/PictureProfile$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mInputId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/media/quality/PictureProfile$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setParameters(Landroid/os/PersistableBundle;)Landroid/media/quality/PictureProfile$Builder;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/media/quality/PictureProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)Landroid/media/quality/PictureProfile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/quality/PictureProfile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setProfileType(I)Landroid/media/quality/PictureProfile$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput p1, p0, Landroid/media/quality/PictureProfile$Builder;->mType:I

    return-object p0
.end method
