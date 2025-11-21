.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final greylist-max-o codePath:Ljava/lang/String;

.field public final greylist-max-o configForSplit:Ljava/lang/String;

.field public final greylist-max-o coreApp:Z

.field public final greylist-max-o debuggable:Z

.field public final greylist-max-o extractNativeLibs:Z

.field public final greylist-max-o installLocation:I

.field public greylist-max-o isFeatureSplit:Z

.field public final blacklist isSplitRequired:Z

.field public final greylist-max-o isolatedSplits:Z

.field public final blacklist minSdkVersion:I

.field public final greylist-max-o multiArch:Z

.field public final blacklist overlayIsStatic:Z

.field public final blacklist overlayPriority:I

.field public final greylist-max-o packageName:Ljava/lang/String;

.field public final blacklist profilableByShell:Z

.field public final greylist-max-o revisionCode:I

.field public final blacklist rollbackDataPolicy:I

.field public final greylist-max-o signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public final greylist-max-o splitName:Ljava/lang/String;

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final blacklist targetSdkVersion:I

.field public final greylist-max-o use32bitAbi:Z

.field public final blacklist useEmbeddedDex:Z

.field public final greylist-max-o usesSplitName:Ljava/lang/String;

.field public final greylist-max-o verifiers:[Landroid/content/pm/VerifierInfo;

.field public final greylist-max-o versionCode:I

.field public final greylist-max-o versionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V
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
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    iput-object p5, p0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    iput p8, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    iput p9, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iput p10, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    iput p11, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    iput-object p13, p0, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-interface {p12}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p12, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/VerifierInfo;

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-boolean p14, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    iput-boolean p15, p0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->profilableByShell:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    iput-boolean p7, p0, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->targetPackageName:Ljava/lang/String;

    move/from16 p1, p23

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->overlayIsStatic:Z

    move/from16 p1, p24

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->overlayPriority:I

    move/from16 p1, p25

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->minSdkVersion:I

    move/from16 p1, p26

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->targetSdkVersion:I

    move/from16 p1, p27

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->rollbackDataPolicy:I

    return-void
.end method


# virtual methods
.method public greylist-max-o getLongVersionCode()J
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iget p0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-static {v0, p0}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method
