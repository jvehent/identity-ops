#!/usr/bin/env python

import boto.iam
import argparse

def get_file(filename):
  with open(filename, 'r') as f:
    read_data = f.read()
  f.closed
  return read_data

# --path /identity/ multisan-www.persona.org

parser = argparse.ArgumentParser(description='Upload certificate')
parser.add_argument('name',
                   help='Certificate name')
parser.add_argument('--certfile', 
                   help='Certificate file')
parser.add_argument('--keyfile', 
                   help='Key file')
parser.add_argument('--chain', 
                   help='Chain file')
parser.add_argument('--path', 
                   help='Path')

args = parser.parse_args()

conn_iam = boto.iam.connect_to_region('universal')

cert_body = get_file(args.name + '.crt') if args.certfile is None else get_file(args.certfile)
private_key = get_file(args.name + '.key') if args.keyfile is None else get_file(args.keyfile)
cert_chain = get_file(args.name + '.intermediate') if args.chain is None else get_file(args.chain)

result = conn_iam.upload_server_cert(cert_name=args.name, 
    cert_body=cert_body, 
    private_key=private_key, 
    cert_chain=cert_chain, 
    path=args.path)

print("Result : %s for uploading cert %s" % (result, args.name))
all_certs = conn_iam.get_all_server_certs()['list_server_certificates_response']['list_server_certificates_result']['server_certificate_metadata_list']
print(all_certs[args.name])