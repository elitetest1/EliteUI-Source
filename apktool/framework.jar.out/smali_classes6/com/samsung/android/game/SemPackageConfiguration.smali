.class public Lcom/samsung/android/game/SemPackageConfiguration;
.super Ljava/lang/Object;
.source "SemPackageConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CATEGORY_GAME_NORMAL:I = 0x1

.field public static final whitelist CATEGORY_NON_GAME_INTERNAL:I = 0x3

.field public static final whitelist CATEGORY_NON_GAME_MANAGED:I = 0xa

.field public static final whitelist CATEGORY_NON_GAME_NORMAL:I = 0x0

.field public static final blacklist CATEGORY_NON_GAME_TUNABLE:I = 0x2

.field public static final whitelist CATEGORY_UNDEFINED:I = -0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemPackageConfiguration"


# instance fields
.field private blacklist category:I

.field private blacklist categoryByUser:I

.field private blacklist dynamicSurfaceScaling:F

.field private blacklist fillBlackSurfaceOnMargins:Z

.field private blacklist optimalAspectRatio:F

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist performancePolicyForSsrm:Ljava/lang/String;

.field private blacklist userId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/game/SemPackageConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/game/SemPackageConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/game/SemPackageConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    const v1, 0x3fe38e39

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/game/SemPackageConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    const v1, 0x3fe38e39

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    iput v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    iput-object v0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist fillBlackSurfaceOnMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return-void
.end method

.method public blacklist getCategory()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    return p0
.end method

.method public blacklist getCategoryByUser()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    return p0
.end method

.method public blacklist getDynamicSurfaceScaling()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    return p0
.end method

.method public blacklist getOptimalAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPerformancePolicyForSsrm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setCategory(I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setCategory(), invalid category: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemPackageConfiguration"

    invoke-static {p1, p0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setCategoryByUser(I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setCategoryByUser(), invalid category: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemPackageConfiguration"

    invoke-static {p1, p0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setDynamicSurfaceScaling(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setDynamicSurfaceScaling(), invalid dynamicSurfaceScaling: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemPackageConfiguration"

    invoke-static {p1, p0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setOptimalAspectRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setOptimalAspectRatio(), invalid optimalAspectRatio: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemPackageConfiguration"

    invoke-static {p1, p0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist setPerformancePolicyForSsrm(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setPerformancePolicyForSsrm(), invalid policy: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemPackageConfiguration"

    invoke-static {p1, p0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    return-void
.end method

.method public blacklist setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    return-void
.end method

.method public blacklist shouldFillBlackSurfaceOnMargins()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", performancePolicyForSsrm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optimalAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getOptimalAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicSurfaceScaling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getDynamicSurfaceScaling()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryByUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategoryByUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fillBlackSurfaceOnMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->shouldFillBlackSurfaceOnMargins()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/game/SemPackageConfiguration;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->performancePolicyForSsrm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->optimalAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->dynamicSurfaceScaling:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->category:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->categoryByUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/game/SemPackageConfiguration;->fillBlackSurfaceOnMargins:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/samsung/android/game/SemPackageConfiguration;->userId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
