.class public Lcom/android/internal/telephony/SemGsmAlphabet;
.super Ljava/lang/Object;
.source "SemGsmAlphabet.java"


# static fields
.field private static final blacklist charToGsm:Landroid/util/SparseIntArray;

.field private static final blacklist charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final blacklist gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final blacklist gsmToChar:Landroid/util/SparseIntArray;

.field private static blacklist sGsmSpaceChar:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xa3

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x24

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xa5

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xe8

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xe9

    const/4 v6, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xf9

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xec

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xf2

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xc7

    const/16 v6, 0x9

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xd8

    const/16 v7, 0xb

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xf8

    const/16 v7, 0xc

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xc5

    const/16 v8, 0xe

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xe5

    const/16 v8, 0xf

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x394

    const/16 v8, 0x10

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x5f

    const/16 v8, 0x11

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x3a6

    const/16 v9, 0x12

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x393

    const/16 v9, 0x13

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x39b

    const/16 v9, 0x14

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x3a9

    const/16 v10, 0x15

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x3a0

    const/16 v10, 0x16

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x3a8

    const/16 v10, 0x17

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x3a3

    const/16 v10, 0x18

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x398

    const/16 v10, 0x19

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x39e

    const/16 v10, 0x1a

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const v8, 0xffff

    const/16 v10, 0x1b

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0xc6

    const/16 v10, 0x1c

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0xe6

    const/16 v10, 0x1d

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0xdf

    const/16 v10, 0x1e

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0xc9

    const/16 v10, 0x1f

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x20

    invoke-virtual {v0, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x21

    invoke-virtual {v0, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x22

    invoke-virtual {v0, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x23

    invoke-virtual {v0, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0xa4

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x25

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x26

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x27

    const/16 v10, 0x27

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x28

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v10, 0x29

    invoke-virtual {v0, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2a

    const/16 v12, 0x2a

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2b

    const/16 v12, 0x2b

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2c

    const/16 v12, 0x2c

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2d

    const/16 v12, 0x2d

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2e

    const/16 v12, 0x2e

    invoke-virtual {v0, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x2f

    invoke-virtual {v0, v11, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x30

    const/16 v13, 0x30

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x31

    const/16 v13, 0x31

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x32

    const/16 v13, 0x32

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x33

    const/16 v13, 0x33

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x34

    const/16 v13, 0x34

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x35

    const/16 v13, 0x35

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x36

    const/16 v13, 0x36

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x37

    const/16 v13, 0x37

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x38

    const/16 v13, 0x38

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x39

    const/16 v13, 0x39

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x3a

    const/16 v13, 0x3a

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x3b

    const/16 v13, 0x3b

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v12, 0x3c

    invoke-virtual {v0, v12, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v13, 0x3d

    invoke-virtual {v0, v13, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v14, 0x3e

    invoke-virtual {v0, v14, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x3f

    const/16 v3, 0x3f

    invoke-virtual {v0, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xa1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x41

    const/16 v15, 0x41

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x42

    const/16 v15, 0x42

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x43

    const/16 v15, 0x43

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x44

    const/16 v15, 0x44

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x45

    const/16 v15, 0x45

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x46

    const/16 v15, 0x46

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x47

    const/16 v15, 0x47

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x48

    const/16 v15, 0x48

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x49

    const/16 v15, 0x49

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4a

    const/16 v15, 0x4a

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4b

    const/16 v15, 0x4b

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4c

    const/16 v15, 0x4c

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4d

    const/16 v15, 0x4d

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4e

    const/16 v15, 0x4e

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4f

    const/16 v15, 0x4f

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x50

    const/16 v15, 0x50

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x51

    const/16 v15, 0x51

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x52

    const/16 v15, 0x52

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x53

    const/16 v15, 0x53

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x54

    const/16 v15, 0x54

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x55

    const/16 v15, 0x55

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x56

    const/16 v15, 0x56

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x57

    const/16 v15, 0x57

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x58

    const/16 v15, 0x58

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x59

    const/16 v15, 0x59

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x5a

    const/16 v15, 0x5a

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xc4

    const/16 v15, 0x5b

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xd6

    const/16 v15, 0x5c

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xd1

    const/16 v15, 0x5d

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xdc

    const/16 v15, 0x5e

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xa7

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xbf

    const/16 v6, 0x60

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x61

    const/16 v6, 0x61

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x62

    const/16 v6, 0x62

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x63

    const/16 v6, 0x63

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x64

    const/16 v6, 0x64

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x65

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x66

    const/16 v15, 0x66

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x67

    const/16 v15, 0x67

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x68

    const/16 v15, 0x68

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x69

    const/16 v15, 0x69

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6a

    const/16 v15, 0x6a

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6b

    const/16 v15, 0x6b

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6c

    const/16 v15, 0x6c

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6d

    const/16 v15, 0x6d

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6e

    const/16 v15, 0x6e

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x6f

    const/16 v15, 0x6f

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x70

    const/16 v15, 0x70

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x71

    const/16 v15, 0x71

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x72

    const/16 v15, 0x72

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x73

    const/16 v15, 0x73

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x74

    const/16 v15, 0x74

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x75

    const/16 v15, 0x75

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x76

    const/16 v15, 0x76

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x77

    const/16 v15, 0x77

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x78

    const/16 v15, 0x78

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x79

    const/16 v15, 0x79

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x7a

    const/16 v15, 0x7a

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xe4

    const/16 v15, 0x7b

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xf6

    const/16 v15, 0x7c

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xf1

    const/16 v15, 0x7d

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xfc

    const/16 v15, 0x7e

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0xe0

    const/16 v15, 0x7f

    invoke-virtual {v0, v6, v15}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x5e

    invoke-virtual {v1, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x7b

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7d

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x5c

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x5b

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7e

    invoke-virtual {v1, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x5d

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x7c

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x20ac

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/SemGsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SemGsmAlphabet;->sGsmSpaceChar:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertEachCharacter(C)C
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledSingleShiftTables()[I

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->getEnabledLockingShiftTables()[I

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SemGsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/SemGsmAlphabet;->convertNonGSMCharacter(C)C

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private static blacklist convertNonGSMCharacter(C)C
    .locals 23

    move/from16 v0, p0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "temp char :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x43

    const/16 v2, 0x79

    const/16 v4, 0x7a

    const/16 v5, 0x73

    const/16 v6, 0x53

    const/16 v7, 0x4e

    const/16 v8, 0x6c

    const/16 v9, 0x4c

    const/16 v10, 0x63

    const/16 v11, 0x59

    const/16 v12, 0x5a

    const/16 v13, 0x69

    const/16 v14, 0x61

    const/16 v15, 0x75

    const/16 v16, 0x65

    const/16 v17, 0x55

    const/16 v18, 0x6f

    const/16 v19, 0x49

    const/16 v20, 0x45

    const/16 v21, 0x41

    const/16 v22, 0x4f

    sparse-switch v0, :sswitch_data_0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    :sswitch_0
    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_1
    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_2
    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_3
    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_4
    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_5
    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_6
    move v0, v4

    goto/16 :goto_1

    :sswitch_7
    move v0, v12

    goto/16 :goto_1

    :sswitch_8
    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_9
    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_a
    move v0, v5

    goto/16 :goto_1

    :sswitch_b
    move v0, v6

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_d
    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_e
    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_f
    move v0, v7

    goto/16 :goto_1

    :sswitch_10
    move v0, v8

    goto :goto_1

    :sswitch_11
    move v0, v9

    goto :goto_1

    :sswitch_12
    const/16 v0, 0x67

    goto :goto_1

    :sswitch_13
    const/16 v0, 0x47

    goto :goto_1

    :sswitch_14
    const/16 v0, 0x64

    goto :goto_1

    :sswitch_15
    const/16 v0, 0x44

    goto :goto_1

    :sswitch_16
    move v0, v1

    goto :goto_1

    :sswitch_17
    move v0, v2

    goto :goto_1

    :sswitch_18
    move v0, v15

    goto :goto_1

    :sswitch_19
    move/from16 v0, v18

    goto :goto_1

    :sswitch_1a
    move v0, v13

    goto :goto_1

    :sswitch_1b
    move/from16 v0, v16

    goto :goto_1

    :sswitch_1c
    move v0, v10

    goto :goto_1

    :sswitch_1d
    move v0, v14

    goto :goto_1

    :sswitch_1e
    move v0, v11

    goto :goto_1

    :sswitch_1f
    move/from16 v0, v17

    goto :goto_1

    :sswitch_20
    move/from16 v0, v22

    goto :goto_1

    :sswitch_21
    move/from16 v0, v19

    goto :goto_1

    :sswitch_22
    move/from16 v0, v20

    goto :goto_1

    :sswitch_23
    move/from16 v0, v21

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const v0, 0xfeff

    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_23
        0xc1 -> :sswitch_23
        0xc2 -> :sswitch_23
        0xc3 -> :sswitch_23
        0xc8 -> :sswitch_22
        0xca -> :sswitch_22
        0xcb -> :sswitch_22
        0xcc -> :sswitch_21
        0xcd -> :sswitch_21
        0xce -> :sswitch_21
        0xcf -> :sswitch_21
        0xd2 -> :sswitch_20
        0xd3 -> :sswitch_20
        0xd4 -> :sswitch_20
        0xd5 -> :sswitch_20
        0xd9 -> :sswitch_1f
        0xda -> :sswitch_1f
        0xdb -> :sswitch_1f
        0xdd -> :sswitch_1e
        0xe1 -> :sswitch_1d
        0xe2 -> :sswitch_1d
        0xe3 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xe9 -> :sswitch_1b
        0xea -> :sswitch_1b
        0xeb -> :sswitch_1b
        0xed -> :sswitch_1a
        0xee -> :sswitch_1a
        0xef -> :sswitch_1a
        0xf3 -> :sswitch_19
        0xf4 -> :sswitch_19
        0xf5 -> :sswitch_19
        0xf6 -> :sswitch_19
        0xfa -> :sswitch_18
        0xfb -> :sswitch_18
        0xfc -> :sswitch_18
        0xfd -> :sswitch_17
        0xff -> :sswitch_17
        0x100 -> :sswitch_23
        0x101 -> :sswitch_1d
        0x104 -> :sswitch_23
        0x105 -> :sswitch_1d
        0x106 -> :sswitch_16
        0x107 -> :sswitch_1c
        0x10c -> :sswitch_16
        0x10d -> :sswitch_1c
        0x10e -> :sswitch_15
        0x10f -> :sswitch_14
        0x112 -> :sswitch_22
        0x113 -> :sswitch_1b
        0x118 -> :sswitch_22
        0x119 -> :sswitch_1b
        0x11a -> :sswitch_22
        0x11b -> :sswitch_1b
        0x11e -> :sswitch_13
        0x11f -> :sswitch_12
        0x12a -> :sswitch_21
        0x12b -> :sswitch_1a
        0x130 -> :sswitch_21
        0x131 -> :sswitch_1a
        0x139 -> :sswitch_11
        0x13a -> :sswitch_10
        0x13d -> :sswitch_11
        0x13e -> :sswitch_10
        0x141 -> :sswitch_11
        0x142 -> :sswitch_10
        0x143 -> :sswitch_f
        0x144 -> :sswitch_e
        0x147 -> :sswitch_f
        0x148 -> :sswitch_e
        0x14c -> :sswitch_20
        0x14d -> :sswitch_19
        0x150 -> :sswitch_20
        0x151 -> :sswitch_19
        0x152 -> :sswitch_20
        0x153 -> :sswitch_19
        0x154 -> :sswitch_d
        0x155 -> :sswitch_c
        0x158 -> :sswitch_d
        0x159 -> :sswitch_c
        0x15a -> :sswitch_b
        0x15b -> :sswitch_a
        0x15e -> :sswitch_b
        0x15f -> :sswitch_a
        0x160 -> :sswitch_b
        0x161 -> :sswitch_a
        0x164 -> :sswitch_9
        0x165 -> :sswitch_8
        0x16a -> :sswitch_1f
        0x16b -> :sswitch_18
        0x16e -> :sswitch_1f
        0x16f -> :sswitch_18
        0x170 -> :sswitch_1f
        0x171 -> :sswitch_18
        0x178 -> :sswitch_1e
        0x179 -> :sswitch_7
        0x17a -> :sswitch_6
        0x17b -> :sswitch_7
        0x17c -> :sswitch_6
        0x17d -> :sswitch_7
        0x17e -> :sswitch_6
        0x391 -> :sswitch_23
        0x392 -> :sswitch_5
        0x395 -> :sswitch_22
        0x396 -> :sswitch_7
        0x397 -> :sswitch_4
        0x399 -> :sswitch_21
        0x39a -> :sswitch_3
        0x39c -> :sswitch_2
        0x39d -> :sswitch_f
        0x39f -> :sswitch_20
        0x3a1 -> :sswitch_1
        0x3a4 -> :sswitch_9
        0x3a5 -> :sswitch_1e
        0x3a7 -> :sswitch_0
    .end sparse-switch
.end method
