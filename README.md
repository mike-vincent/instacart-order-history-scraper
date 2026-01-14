# instacart-order-history-tool

Export your Instacart order history with full item details.

## Setup

```bash
pip install requests
```

## Get Your Session Cookie

1. Log into [instacart.com](https://instacart.com) in Chrome
2. Open DevTools (`Cmd+Option+I`)
3. Application tab → Cookies → instacart.com
4. Copy the value of `_instacart_session_id`

## Usage

```bash
./instacart-orders --session "YOUR_COOKIE"
```

### Options

| Flag | Description |
|------|-------------|
| `--months N` | Last N months only |
| `--days N` | Last N days only |
| `--since YYYY-MM-DD` | Since date |
| `--format json\|csv\|text` | Output format (default: json) |
| `-o FILE` | Write to file |
| `-q` | Quiet mode |

### Examples

```bash
./instacart-orders -s "COOKIE" --months 6           # Last 6 months
./instacart-orders -s "COOKIE" --format csv -o out.csv
./instacart-orders -s "COOKIE" --format text        # Human readable
```

## Output

JSON includes: order ID, date, total, retailer, and item details (name, quantity, size).

## License

MIT
