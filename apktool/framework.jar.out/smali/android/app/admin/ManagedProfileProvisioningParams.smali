.class public final Landroid/app/admin/ManagedProfileProvisioningParams;
.super Ljava/lang/Object;
.source "ManagedProfileProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ACCOUNT_TO_MIGRATE_PROVIDED_PARAM:Ljava/lang/String; = "ACCOUNT_TO_MIGRATE_PROVIDED"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ManagedProfileProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEEP_MIGRATED_ACCOUNT_PARAM:Ljava/lang/String; = "KEEP_MIGRATED_ACCOUNT"

.field private static final blacklist LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final blacklist ORGANIZATION_OWNED_PROVISIONING_PARAM:Ljava/lang/String; = "ORGANIZATION_OWNED_PROVISIONING"


# instance fields
.field private final blacklist mAccountToMigrate:Landroid/accounts/Account;

.field private final blacklist mAdminExtras:Landroid/os/PersistableBundle;

.field private final blacklist mKeepAccountOnMigration:Z

.field private final blacklist mLeaveAllSystemAppsEnabled:Z

.field private final blacklist mOrganizationOwnedProvisioning:Z

.field private final blacklist mOwnerName:Ljava/lang/String;

.field private final blacklist mProfileAdminComponentName:Landroid/content/ComponentName;

.field private final blacklist mProfileName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/ManagedProfileProvisioningParams$1;

    invoke-direct {v0}, Landroid/app/admin/ManagedProfileProvisioningParams$1;-><init>()V

    sput-object v0, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    iput-boolean p5, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    iput-boolean p6, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    iput-boolean p7, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    iput-object p8, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V

    return-void
.end method

.method private blacklist logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getAccountToMigrate()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    return-object p0
.end method

.method public whitelist getAdminExtras()Landroid/os/PersistableBundle;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getOwnerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getProfileAdminComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist getProfileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist isKeepingAccountOnMigration()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    return p0
.end method

.method public whitelist isLeaveAllSystemAppsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    return p0
.end method

.method public whitelist isOrganizationOwnedProvisioning()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    return p0
.end method

.method public blacklist logParams(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ORGANIZATION_OWNED_PROVISIONING"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "KEEP_MIGRATED_ACCOUNT"

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ACCOUNT_TO_MIGRATE_PROVIDED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ManagedProfileProvisioningParams{mProfileAdminComponentName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mProfileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccountToMigrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeaveAllSystemAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOrganizationOwnedProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeepAccountOnMigration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAdminExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
