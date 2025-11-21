.class public final Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts$DefaultAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAccountAndState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState$DefaultAccountState;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_ACCOUNT_STATE_CLOUD:I = 0x3

.field public static final whitelist DEFAULT_ACCOUNT_STATE_LOCAL:I = 0x2

.field public static final whitelist DEFAULT_ACCOUNT_STATE_NOT_SET:I = 0x1

.field public static final whitelist DEFAULT_ACCOUNT_STATE_SIM:I = 0x4


# instance fields
.field private final blacklist mAccount:Landroid/accounts/Account;

.field private final blacklist mState:I


# direct methods
.method private constructor blacklist <init>(ILandroid/accounts/Account;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isValidDefaultAccountState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_2

    iput p1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default account can be set to cloud or SIM if and only if the account is provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid default account state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(ILandroid/accounts/Account;Landroid/provider/ContactsContract-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public static blacklist isCloudOrSimAccount(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isValidDefaultAccountState(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static whitelist ofCloud(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .locals 2

    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofLocal()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .locals 3

    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofNotSet()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .locals 3

    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofSim(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .locals 2

    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    iget v1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    iget v3, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getAccount()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public whitelist getState()I
    .locals 0

    iget p0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
