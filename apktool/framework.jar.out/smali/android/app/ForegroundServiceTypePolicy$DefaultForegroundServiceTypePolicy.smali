.class public Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;
.super Landroid/app/ForegroundServiceTypePolicy;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultForegroundServiceTypePolicy"
.end annotation


# instance fields
.field private final blacklist mForegroundServiceTypePolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/ForegroundServiceTypePolicy;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    sget-object v2, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MANIFEST:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_NONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_DATA_SYNC:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PLAYBACK:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_PHONE_CALL:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_LOCATION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CONNECTED_DEVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x20

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROJECTION:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x40

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_CAMERA:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x80

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MICROPHONE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x100

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_HEALTH:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x200

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_REMOTE_MESSAGING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x400

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SYSTEM_EXEMPTED:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x800

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SHORT_SERVICE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2000

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_MEDIA_PROCESSING:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v1, 0x40000000    # 2.0f

    sget-object v3, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->FGS_TYPE_POLICY_SPECIAL_USE:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    iget-object v3, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkForegroundServiceTypePolicy(Landroid/content/Context;Ljava/lang/String;IIZLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;)I
    .locals 7

    invoke-virtual {p6, p3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object p0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    move-object v2, p1

    move-object v5, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p0

    goto :goto_0

    :cond_1
    move-object v2, p1

    move-object v5, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move p0, v0

    :goto_0
    const/4 p1, 0x1

    if-nez p0, :cond_3

    iget-object p2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz p2, :cond_2

    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    if-eqz v0, :cond_3

    iget-object p2, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    if-eqz p2, :cond_3

    iget-object v1, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p0

    :cond_3
    if-eqz p0, :cond_5

    iget-boolean p0, p6, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    if-eqz p0, :cond_4

    const-wide/32 p0, 0xf2dd77a    # 1.258200034E-315

    invoke-static {p0, p1, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    invoke-virtual {p6, v3}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isTypeDeprecated(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    return p1
.end method

.method public blacklist getForegroundServiceTypePolicyInfo(II)Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-nez p1, :cond_1

    iget-object p0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mForegroundServiceTypePolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid default fgs type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1
.end method

.method public blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/app/ForegroundServiceTypePolicy$DefaultForegroundServiceTypePolicy;->mPermissionEnforcementToPolicyInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->-$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
