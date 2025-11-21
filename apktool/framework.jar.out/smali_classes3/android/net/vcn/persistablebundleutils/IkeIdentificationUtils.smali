.class public final Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;
.super Ljava/lang/Object;
.source "IkeIdentificationUtils.java"


# static fields
.field private static final blacklist DER_ASN1_DN_KEY:Ljava/lang/String; = "DER_ASN1_DN_KEY"

.field private static final blacklist FQDN_KEY:Ljava/lang/String; = "FQDN_KEY"

.field private static final blacklist ID_TYPE_DER_ASN1_DN:I = 0x1

.field private static final blacklist ID_TYPE_FQDN:I = 0x2

.field private static final blacklist ID_TYPE_IPV4_ADDR:I = 0x3

.field private static final blacklist ID_TYPE_IPV6_ADDR:I = 0x4

.field private static final blacklist ID_TYPE_KEY:Ljava/lang/String; = "ID_TYPE_KEY"

.field private static final blacklist ID_TYPE_KEY_ID:I = 0x5

.field private static final blacklist ID_TYPE_RFC822_ADDR:I = 0x6

.field private static final blacklist IP4_ADDRESS_KEY:Ljava/lang/String; = "IP4_ADDRESS_KEY"

.field private static final blacklist IP6_ADDRESS_KEY:Ljava/lang/String; = "IP6_ADDRESS_KEY"

.field private static final blacklist KEY_ID_KEY:Ljava/lang/String; = "KEY_ID_KEY"

.field private static final blacklist RFC822_ADDRESS_KEY:Ljava/lang/String; = "RFC822_ADDRESS_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createPersistableBundle(I)Landroid/os/PersistableBundle;
    .locals 2

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "ID_TYPE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 3

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ID_TYPE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized IKE ID type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v1, "RFC822_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    const-string v0, "KEY_ID_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "Key ID was null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object p0

    :pswitch_2
    const-string v0, "IP6_ADDRESS_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IPv6 address was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v0

    :pswitch_3
    const-string v0, "IP4_ADDRESS_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IPv4 address was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v1, "FQDN_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_5
    const-string v0, "DER_ASN1_DN_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "ASN1 DN was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/os/PersistableBundle;
    .locals 2

    instance-of v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "DER_ASN1_DN_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v1, "FQDN_KEY"

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IP4_ADDRESS_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IP6_ADDRESS_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {p0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v1, "KEY_ID_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    check-cast p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v1, "RFC822_ADDRESS_KEY"

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized IkeIdentification subclass"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
