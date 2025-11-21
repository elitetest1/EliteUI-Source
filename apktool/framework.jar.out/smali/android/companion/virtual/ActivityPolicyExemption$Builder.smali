.class public final Landroid/companion/virtual/ActivityPolicyExemption$Builder;
.super Ljava/lang/Object;
.source "ActivityPolicyExemption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/ActivityPolicyExemption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mDisplayId:I

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/ActivityPolicyExemption;
    .locals 4

    iget-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption;

    iget-object v1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    iget p0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/companion/virtual/ActivityPolicyExemption;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/companion/virtual/ActivityPolicyExemption-IA;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either component name or package name must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDisplayId(I)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
