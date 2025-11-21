.class public Lcom/samsung/android/wallpaperbackup/WallpaperUser;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    }
.end annotation


# instance fields
.field private blacklist mComponent:Ljava/lang/String;

.field private blacklist mComponentName:Ljava/lang/String;

.field private blacklist mCoverType:Ljava/lang/String;

.field private blacklist mDeviceType:Ljava/lang/String;

.field private blacklist mExternalParams:Ljava/lang/String;

.field private blacklist mHeight:I

.field private blacklist mIsHomeAndLockPaired:Z

.field private blacklist mOrientation:I

.field private blacklist mPath:Ljava/lang/String;

.field private blacklist mTiltSetting:I

.field private blacklist mTransparency:I

.field private blacklist mUri:Landroid/net/Uri;

.field private blacklist mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

.field private blacklist mWidth:I

.field private blacklist mWpType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mIsHomeAndLockPaired:Z

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponentName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    iput p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    iput-object p5, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    iput-boolean p2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mIsHomeAndLockPaired:Z

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponentName:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-direct {p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-void
.end method


# virtual methods
.method public blacklist getBottomValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    return p0
.end method

.method public blacklist getComponent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getComponentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCoverType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeviceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getExternalParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    return p0
.end method

.method public blacklist getIsHomeAndLockPaired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mIsHomeAndLockPaired:Z

    return p0
.end method

.method public blacklist getLeftValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    return p0
.end method

.method public blacklist getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    return p0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRightValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    return p0
.end method

.method public blacklist getRotationValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    return p0
.end method

.method public blacklist getTiltSettingValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return p0
.end method

.method public blacklist getTopValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    return p0
.end method

.method public blacklist getTransparency()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    return p0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist getWallpaperData()Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-object p0
.end method

.method public blacklist getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    return p0
.end method

.method public blacklist getWpType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    return p0
.end method

.method public blacklist setBottomValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    return-void
.end method

.method public blacklist setComponent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    return-void
.end method

.method public blacklist setComponentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponentName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setCoverType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mCoverType:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public blacklist setExternalParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mExternalParams:Ljava/lang/String;

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    return-void
.end method

.method public blacklist setIsHomeAndLockPaired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mIsHomeAndLockPaired:Z

    return-void
.end method

.method public blacklist setLeftValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    return-void
.end method

.method public blacklist setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    return-void
.end method

.method public blacklist setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRightValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    return-void
.end method

.method public blacklist setRotationValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    return-void
.end method

.method public blacklist setTiltSettingValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    return-void
.end method

.method public blacklist setTopValue(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    return-void
.end method

.method public blacklist setTransparency(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    return-void
.end method

.method public blacklist setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public blacklist setWallpaperData(Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    return-void
.end method

.method public blacklist setWpType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\tWallpaperUser:\n\t\tmWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmTransparency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTransparency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmDeviceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmComponent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmWpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmTiltSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mTiltSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmIsHomeAndLockPaired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mIsHomeAndLockPaired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mComponentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\t\tmWallpaperData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->mWallpaperData:Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
