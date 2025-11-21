.class public Landroid/content/pm/PackageInstaller$InstallInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$InstallInfo$InstallLocation;
    }
.end annotation


# instance fields
.field private blacklist mPkg:Landroid/content/pm/parsing/PackageLite;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/parsing/result/ParseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/parsing/PackageLite;

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method


# virtual methods
.method public whitelist calculateInstalledSize(Landroid/content/pm/PackageInstaller$SessionParams;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist calculateInstalledSize(Landroid/content/pm/PackageInstaller$SessionParams;Landroid/os/ParcelFileDescriptor;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist getInstallLocation()I
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result p0

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$InstallInfo;->mPkg:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
