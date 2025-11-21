.class public final synthetic Landroid/os/SystemConfigManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/content/pm/SignedPackage;

    check-cast p1, Landroid/content/pm/SignedPackageParcel;

    invoke-direct {p0, p1}, Landroid/content/pm/SignedPackage;-><init>(Landroid/content/pm/SignedPackageParcel;)V

    return-object p0
.end method
