.class public Landroid/content/pm/parsing/ApkLite;
.super Ljava/lang/Object;
.source "ApkLite.java"


# instance fields
.field private final blacklist mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field private final blacklist mConfigForSplit:Ljava/lang/String;

.field private final blacklist mCoreApp:Z

.field private final blacklist mDebuggable:Z

.field private final blacklist mDeclaredLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyInstaller:Ljava/lang/String;

.field private final blacklist mExtractNativeLibs:Z

.field private final blacklist mFeatureSplit:Z

.field private final blacklist mHasDeviceAdminReceiver:Z

.field private final blacklist mInstallLocation:I

.field private final blacklist mIsSdkLibrary:Z

.field private final blacklist mIsStaticLibrary:Z

.field private final blacklist mIsolatedSplits:Z

.field private final blacklist mMinSdkVersion:I

.field private final blacklist mMultiArch:Z

.field private final blacklist mOverlayIsStatic:Z

.field private final blacklist mOverlayPriority:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPageSizeCompat:I

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mProfileableByShell:Z

.field private final blacklist mRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequiredSystemPropertyName:Ljava/lang/String;

.field private final blacklist mRequiredSystemPropertyValue:Ljava/lang/String;

.field private final blacklist mRevisionCode:I

.field private final blacklist mRollbackDataPolicy:I

.field private final blacklist mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final blacklist mSplitName:Ljava/lang/String;

.field private final blacklist mSplitRequired:Z

.field private final blacklist mSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetPackageName:Ljava/lang/String;

.field private final blacklist mTargetSdkVersion:I

.field private final blacklist mUpdatableSystem:Z

.field private final blacklist mUse32bitAbi:Z

.field private final blacklist mUseEmbeddedDex:Z

.field private final blacklist mUsesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field private final blacklist mUsesSdkLibrariesVersionsMajor:[J

.field private final blacklist mUsesSplitName:Ljava/lang/String;

.field private final blacklist mUsesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private final blacklist mUsesStaticLibrariesVersions:[J

.field private final blacklist mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final blacklist mVersionCode:I

.field private final blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ArchivedPackageParcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    iget v1, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    iget v1, p2, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iput v0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    new-array v1, v0, [Landroid/content/pm/VerifierInfo;

    iput-object v1, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    iget-object v1, p2, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    iput-object v1, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    iput v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    iget v2, p2, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iput v2, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    iput v0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    iput-boolean v1, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    iput v0, p0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZLjava/util/List;[J[[Ljava/lang/String;ZLjava/util/List;[J[[Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[J[[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    move-object/from16 p1, p31

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    iput-boolean p4, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    iput-object p5, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    move-object/from16 p1, p30

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    if-nez p7, :cond_1

    invoke-direct {p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    iput p8, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    iput p9, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iput p10, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    iput p11, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    invoke-interface {p12}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p12, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/VerifierInfo;

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    iput-object p13, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-boolean p14, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    iput-boolean p15, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    move/from16 p1, p23

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    move/from16 p1, p24

    iput p1, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    move-object/from16 p1, p25

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    move/from16 p1, p27

    iput p1, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    move/from16 p1, p28

    iput p1, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    move/from16 p1, p29

    iput p1, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    move/from16 p1, p32

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    move/from16 p1, p33

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    move/from16 p1, p37

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    move-object/from16 p1, p34

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    move-object/from16 p1, p35

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    move-object/from16 p1, p36

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    move-object/from16 p1, p39

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    move-object/from16 p1, p40

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    move/from16 p1, p41

    iput-boolean p1, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    move-object/from16 p1, p42

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    move-object/from16 p1, p43

    iput-object p1, p0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    move/from16 p1, p44

    iput p1, p0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist hasAnyRequiredSplitTypes()Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object p0
.end method

.method public blacklist getConfigForSplit()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeclaredLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mDeclaredLibraries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getEmergencyInstaller()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mEmergencyInstaller:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getInstallLocation()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    return p0
.end method

.method public blacklist getLongVersionCode()J
    .locals 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    invoke-static {v0, p0}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinSdkVersion()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    return p0
.end method

.method public blacklist getOverlayPriority()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPageSizeCompat()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mPageSizeCompat:I

    return p0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRequiredSplitTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getRequiredSystemPropertyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRequiredSystemPropertyValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRevisionCode()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    return p0
.end method

.method public blacklist getRollbackDataPolicy()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    return p0
.end method

.method public blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSplitTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    return-object p0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTargetSdkVersion()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    return p0
.end method

.method public blacklist getUsesSdkLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibraries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsesSdkLibrariesVersionsMajor()[J
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSdkLibrariesVersionsMajor:[J

    return-object p0
.end method

.method public blacklist getUsesSplitName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsesStaticLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibraries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUsesStaticLibrariesVersions()[J
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public blacklist getVerifiers()[Landroid/content/pm/VerifierInfo;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object p0
.end method

.method public blacklist getVersionCode()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    return p0
.end method

.method public blacklist getVersionCodeMajor()I
    .locals 0

    iget p0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    return p0
.end method

.method public blacklist isCoreApp()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    return p0
.end method

.method public blacklist isDebuggable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    return p0
.end method

.method public blacklist isExtractNativeLibs()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    return p0
.end method

.method public blacklist isFeatureSplit()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    return p0
.end method

.method public blacklist isHasDeviceAdminReceiver()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    return p0
.end method

.method public blacklist isIsSdkLibrary()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return p0
.end method

.method public blacklist isIsStaticLibrary()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mIsStaticLibrary:Z

    return p0
.end method

.method public blacklist isIsolatedSplits()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    return p0
.end method

.method public blacklist isMultiArch()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    return p0
.end method

.method public blacklist isOverlayIsStatic()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    return p0
.end method

.method public blacklist isProfileableByShell()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    return p0
.end method

.method public blacklist isSplitRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    return p0
.end method

.method public blacklist isUpdatableSystem()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mUpdatableSystem:Z

    return p0
.end method

.method public blacklist isUse32bitAbi()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    return p0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    return p0
.end method
